# ft_printf

## Description

Projet `ft_printf` de l'école 42. L'objectif est de recréer la fonction `printf` de la bibliothèque standard C. Le projet vise à approfondir vos connaissances sur la manipulation de chaînes de format et sur les arguments de variable.

## Fonctionnalités supportées

- Conversion de spécificateurs de format tels que `%c`, `%s`, `%p`, `%d`, `%i`, `%u`, `%x`, `%X`, `%o`, `%f`, etc.
- Largeur de champ (padding) et précision.
- Gestion des tailles de longueur pour les entiers (`h`, `hh`, `l`, `ll`).
- Gestion des couleurs et effets de texte (bonus).

## Limitations

- Les flags tels que `0`, `-`, `+`, `#`, et `space` ne sont pas pris en charge dans cette implémentation.

## Comment utiliser

1. Clonez le dépôt : `git clone <lien du dépôt>`.
2. Naviguez dans le répertoire `ft_printf`.
3. Exécutez `make` pour compiler la bibliothèque statique `libftprintf.a`.
4. Vous pouvez maintenant utiliser `libftprintf.a` avec votre programme.

## Exemples

```c
#include "ft_printf.h"

int main()
{
    ft_printf("Hello, %s! The answer is %d.\n", "world", 42);
    return (0);
}
