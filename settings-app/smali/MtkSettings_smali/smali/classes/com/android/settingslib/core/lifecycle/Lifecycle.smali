.class public Lcom/android/settingslib/core/lifecycle/Lifecycle;
.super Landroid/arch/lifecycle/LifecycleRegistry;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
    }
.end annotation


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    .line 58
    new-instance p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    .line 70
    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPause()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onDestroy()V

    return-void
.end method

.method private onDestroy()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 173
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    if-eqz v3, :cond_0

    .line 174
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;->onDestroy()V

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method private onPause()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 146
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    if-eqz v3, :cond_0

    .line 147
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnPause;->onPause()V

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method private onResume()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 137
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    if-eqz v3, :cond_0

    .line 138
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnResume;->onResume()V

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method private onStart()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 119
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v3, :cond_0

    .line 120
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method private onStop()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 164
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v3, :cond_0

    .line 165
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v2}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 80
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 81
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 99
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    if-eqz v3, :cond_0

    .line 100
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 110
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    if-eqz v3, :cond_0

    .line 111
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 182
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v3, :cond_0

    .line 183
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 200
    instance-of v4, v3, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v4, :cond_0

    .line 201
    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 p1, 0x1

    return p1

    .line 198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 191
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v3, :cond_0

    .line 192
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 155
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v3, :cond_0

    .line 156
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 90
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 91
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 128
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v3, :cond_0

    .line 129
    check-cast v2, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    invoke-interface {v2, p1}, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method
