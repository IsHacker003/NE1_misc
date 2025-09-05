.class Lcom/android/settings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 152
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 153
    if-eqz p1, :cond_0

    .line 154
    new-instance p1, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    .line 156
    invoke-virtual {p2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "dialog"

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    .line 160
    invoke-virtual {p2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "dialog"

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 162
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
