.class Lcom/android/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 133
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v2, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/android/settings/PrivacySettings;->access$000(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {p1}, Lcom/android/settings/PrivacySettings;->access$100(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 144
    nop

    .line 146
    move v0, v1

    goto :goto_0

    .line 142
    :catch_0
    move-exception p1

    .line 143
    iget-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {p1}, Lcom/android/settings/PrivacySettings;->access$000(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object p1

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    :cond_1
    :goto_0
    return v0
.end method
