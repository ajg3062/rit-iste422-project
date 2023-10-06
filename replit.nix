{ pkgs }: {
    deps = [
        pkgs.vim
        pkgs.flex
        pkgs.ant
        pkgs.gradle
        pkgs.graalvm17-ce
        pkgs.maven
        pkgs.replitPackages.jdt-language-server
        pkgs.replitPackages.java-debug
    ];
}