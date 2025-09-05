.class Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateDnsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 138
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 146
    :cond_0
    return-void
.end method
