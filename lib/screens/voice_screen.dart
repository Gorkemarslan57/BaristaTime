import 'package:flutter/material.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_menu.dart';



class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BaristaTime',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
        backgroundColor: colors['onSurface'],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                     
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.5,
                        children: [
                          ActionCard(
                            icon: Icons.person,
                            title: "Profil",
                            color: Theme.of(context).colorScheme.primary,
                            onTap: () => context.push("/profile"),
                          ),
                          ActionCard(
                            icon: Icons.login,
                            title: "Giriş Yap",
                            color: Theme.of(context).colorScheme.secondary,
                            onTap: () => context.push("/login"),
                          ),
                          ActionCard(
                            icon: Icons.app_registration,
                            title: "Kayıt Ol",
                            color: Theme.of(context).colorScheme.tertiary,
                            onTap: () => context.go("/register"),
                          ),
                          ActionCard(
                            icon: Icons.delete,
                            title: "Hesabı Kaldır",
                            color: Theme.of(context).colorScheme.error,
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                icon: const Icon(Icons.warning),
                                title: const Text("Uyarı"),
                                content: const Text(
                                    "Hesabınızı silmek istediğinizden emin misiniz?"),
                                actions: [
                                  TextButton(
                                    onPressed: () => context.pop(),
                                    child: const Text("İptal"),
                                  ),
                                  FilledButton(
                                    onPressed: () {},
                                    child: const Text("Sil"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    
                  ),
                  
                ),
                
              ),
              
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const ActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: color, width: 4)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32, color: color),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: color,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}