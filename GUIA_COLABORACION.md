# 📘 Guía de Colaboración con Git y GitHub

Esta guía explica paso a paso cómo trabajar de forma colaborativa en este proyecto.

---

## 🚀 Configuración Inicial (Solo la primera vez)

### Para ti (ya está hecho):
El repositorio ya está creado y configurado en:
**https://github.com/JaviDema/hello-world-java**

### Para tu compañero:

**1. Instalar Git** (si no lo tiene):
- Mac: `brew install git`
- Windows: Descargar de https://git-scm.com/
- Linux: `sudo apt-get install git`

**2. Configurar Git** (primera vez):
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@ejemplo.com"
```

**3. Clonar el repositorio**:
```bash
cd ~/Documentos  # O la carpeta donde quiera trabajar
git clone https://github.com/JaviDema/hello-world-java.git
cd hello-world-java
```

**Importante**: Debes invitar a tu compañero al repositorio:
- Ve a: https://github.com/JaviDema/hello-world-java/settings/access
- Click en "Add people"
- Introduce su usuario de GitHub
- Envía la invitación

---

## 🔄 Flujo de Trabajo Diario

### 📥 ANTES de empezar a trabajar (SIEMPRE):

```bash
cd hello-world-java
git pull
```

**¿Qué hace esto?**
- Descarga todos los cambios que hayan subido otros (tu compañero)
- Actualiza tu código local con la última versión del repositorio
- **MUY IMPORTANTE**: Hazlo SIEMPRE antes de empezar a trabajar para evitar conflictos

**Salida esperada**:
```
Already up to date.  # Si no hay cambios nuevos
```
O mostrará los archivos que se han actualizado.

---

### ✏️ MIENTRAS trabajas:

1. **Abre tu IDE favorito** (VS Code, IntelliJ, Eclipse, etc.)
2. **Modifica los archivos** que necesites
3. **Guarda los cambios** normalmente

---

### 📤 DESPUÉS de hacer cambios (Subir al repositorio):

**Paso 1: Ver qué has modificado**
```bash
git status
```

Esto te mostrará:
- Archivos modificados (en rojo)
- Archivos nuevos (en rojo)
- Archivos listos para commit (en verde)

**Paso 2: Añadir los cambios**
```bash
# Opción A: Añadir TODOS los archivos modificados
git add .

# Opción B: Añadir archivos específicos
git add src/HelloWorld.java
git add README.md
```

**Paso 3: Crear un commit (guardar los cambios localmente)**
```bash
git commit -m "Descripción clara de lo que has cambiado"
```

**Ejemplos de buenos mensajes de commit**:
- `git commit -m "Añadido método para calcular suma"`
- `git commit -m "Corregido error en el bucle principal"`
- `git commit -m "Actualizado README con instrucciones"`

**Paso 4: Subir los cambios a GitHub**
```bash
git push
```

**¿Qué hace esto?**
- Sube tus cambios al repositorio en GitHub
- Ahora tu compañero podrá verlos y descargarlos

---

## 📋 Ejemplo Completo: Tú haces un cambio

```bash
# 1. Antes de empezar, actualiza
git pull

# 2. Modifica el archivo (por ejemplo, HelloWorld.java)
# ... editas el código en tu IDE ...

# 3. Verifica qué has cambiado
git status

# 4. Añade los cambios
git add .

# 5. Crea un commit
git commit -m "Añadido mensaje de bienvenida personalizado"

# 6. Sube los cambios
git push
```

---

## 📋 Ejemplo Completo: Tu compañero ve tus cambios

```bash
# 1. Descarga los últimos cambios
git pull

# 2. Ahora tiene tu código actualizado
# Puede abrir el proyecto y ver los cambios
```

---

## ⚠️ Situaciones Comunes

### ❌ Error: "Updates were rejected"

**Problema**: Intentaste hacer `git push` pero alguien subió cambios antes que tú.

**Solución**:
```bash
git pull          # Descarga los cambios del compañero
git push          # Ahora sí puedes subir
```

---

### ⚠️ Conflicto de Merge

**Problema**: Tú y tu compañero modificasteis la misma línea del mismo archivo.

**Solución**:
```bash
git pull
# Git te dirá que hay conflictos

# Abre el archivo con conflicto, verás algo así:
<<<<<<< HEAD
tu código
=======
código del compañero
>>>>>>> rama

# Edita el archivo y deja solo el código correcto
# Elimina las líneas <<<<<<, =======, >>>>>>>

git add .
git commit -m "Resuelto conflicto en HelloWorld.java"
git push
```

---

### 🔍 Ver el historial de cambios

```bash
# Ver últimos commits
git log

# Ver últimos 5 commits de forma compacta
git log --oneline -5

# Ver quién cambió qué
git log --oneline --graph --all
```

---

### 🔙 Deshacer cambios (antes de commit)

```bash
# Deshacer cambios en un archivo específico
git checkout -- src/HelloWorld.java

# Deshacer TODOS los cambios no guardados
git reset --hard
```

---

## 🎯 Mejores Prácticas

### ✅ HAZ:
- **Siempre** `git pull` antes de empezar a trabajar
- Haz commits frecuentes con mensajes descriptivos
- Sube tus cambios (`git push`) al terminar tu sesión de trabajo
- Comunícate con tu compañero sobre qué estás modificando

### ❌ NO HAGAS:
- Modificar el mismo archivo al mismo tiempo (coordinaos)
- Olvidar hacer `git pull` antes de trabajar
- Hacer commits con mensajes vagos como "cambios" o "fix"
- Dejar cambios sin subir durante días

---

## 🛠️ Comandos Útiles Resumidos

```bash
# Ver estado actual
git status

# Descargar cambios
git pull

# Añadir archivos
git add .

# Crear commit
git commit -m "mensaje"

# Subir cambios
git push

# Ver historial
git log --oneline

# Ver diferencias
git diff
```

---

## 📞 ¿Necesitas Ayuda?

Si algo no funciona:
1. Copia el mensaje de error completo
2. Busca en Google: "git [mensaje de error]"
3. O pregunta a tu compañero

**Recursos útiles**:
- https://git-scm.com/doc
- https://docs.github.com/es

---

## 🎓 Resumen Ultra-Rápido

**Cada vez que trabajes**:
```bash
git pull              # Descargar cambios
# ... trabajas ...
git add .             # Preparar cambios
git commit -m "..."   # Guardar cambios
git push              # Subir cambios
```

¡Eso es todo! 🚀
