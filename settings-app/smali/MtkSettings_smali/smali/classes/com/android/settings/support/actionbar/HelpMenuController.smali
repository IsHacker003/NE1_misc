.class public Lcom/android/settings/support/actionbar/HelpMenuController;
.super Ljava/lang/Object;
.source "HelpMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    .line 51
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 47
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/support/actionbar/HelpMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/support/actionbar/HelpMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 55
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 56
    nop

    .line 57
    if-eqz p2, :cond_0

    const-string v0, "help_uri_resource"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "help_uri_resource"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    instance-of p2, p2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    if-eqz p2, :cond_1

    .line 60
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    check-cast p2, Lcom/android/settings/support/actionbar/HelpResourceProvider;

    invoke-interface {p2}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p2

    goto :goto_0

    .line 63
    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 64
    if-eqz p2, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 68
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 69
    iget-object v1, p0, Lcom/android/settings/support/actionbar/HelpMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    :cond_3
    return-void
.end method
