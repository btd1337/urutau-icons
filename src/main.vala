using Gtk;

public void on_window_destroy (Window source) {
    Gtk.main_quit();
}

public void show_tip_iconography (Button source) {
    Posix.system("sensible-browser  https://elementary.io/docs/human-interface-guidelines#iconography &");
}

public void submit_icon (Button source) {
    Posix.system("sensible-browser  https://github.com/btd1337/urutau-icons/issues");
}

public void change_state(Switch switch) {
    if (switch.active) {
        Posix.system("gsettings set org.gnome.desktop.interface icon-theme 'urutau-icons'");
        stdout.printf("Theme uruatu-icons applied");

	} else {
        Posix.system("gsettings set org.gnome.desktop.interface icon-theme 'elementary'");
        stdout.printf("Theme elementary applied");
	}
}

public static int main(string[] args) {
    Gtk.init (ref args);

    var builder = new Builder ();

    try {
        builder.add_from_file ("main.ui");
        builder.connect_signals (null);
        var window = builder.get_object ("main-window") as Window;
        window.set_default_size (400,600);
        window.destroy.connect (Gtk.main_quit);
        window.show_all ();
    }catch(Error e) {
        stderr.printf("No such file");
    }

    Gtk.main ();

    return 0;
}