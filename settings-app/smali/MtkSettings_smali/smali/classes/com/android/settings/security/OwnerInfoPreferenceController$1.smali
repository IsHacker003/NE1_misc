.class Lcom/android/settings/security/OwnerInfoPreferenceController$1;
.super Ljava/lang/Object;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController$1;->this$0:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-static {p1}, Lcom/android/settings/security/OwnerInfoPreferenceController;->access$000(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroid/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    .line 98
    const/4 p1, 0x1

    return p1
.end method
