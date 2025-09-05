.class public Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "SearchMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    .line 52
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservableFragment;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 48
    return-void
.end method

.method public static init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/actionbar/SearchMenuController;

    invoke-direct {v1, p0}, Lcom/android/settings/search/actionbar/SearchMenuController;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 44
    return-void
.end method

.method public static synthetic lambda$onCreateOptionsMenu$0(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/view/MenuItem;)Z
    .locals 2

    .line 77
    sget-object p1, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 56
    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 63
    if-eqz p2, :cond_2

    const-string v0, "need_search_icon_in_action_bar"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 64
    return-void

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 68
    return-void

    .line 71
    :cond_3
    const p2, 0x7f120bd0    # @string/search_menu 'Search settings'

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 73
    const p2, 0x7f080156    # @drawable/ic_search_24dp 'res/drawable/ic_search_24dp.xml'

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 74
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    new-instance p2, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$5lHWir39yWMPpFtqgtH1CYNgf1M;

    invoke-direct {p2, p0}, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$5lHWir39yWMPpFtqgtH1CYNgf1M;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 84
    return-void
.end method
