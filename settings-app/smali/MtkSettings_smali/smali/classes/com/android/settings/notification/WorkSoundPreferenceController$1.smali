.class Lcom/android/settings/notification/WorkSoundPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 300
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16fbb1bb

    if-eq v0, v1, :cond_1

    const v1, 0x3eac4465

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 311
    return-void

    .line 307
    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileRemoved(I)V

    .line 308
    return-void

    .line 303
    :pswitch_1
    iget-object p2, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileAdded(I)V

    .line 304
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
