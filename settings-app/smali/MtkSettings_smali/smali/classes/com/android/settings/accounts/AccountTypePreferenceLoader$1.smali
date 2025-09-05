.class Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

.field final synthetic val$acccountType:Ljava/lang/String;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 158
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$000(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    .line 168
    invoke-static {v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$100(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;

    move-result-object v1

    .line 167
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "AccountTypePrefLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
