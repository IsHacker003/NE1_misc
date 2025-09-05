.class Lcust/settings/custRingtone/FihRingtonePickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FihRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/FihRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/FihRingtonePickerActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 146
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    const-string p1, "FihRingtonePickerActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    receive media_unmount intent, mExistingUri="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-static {v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$000(Lcust/settings/custRingtone/FihRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-static {p2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$000(Lcust/settings/custRingtone/FihRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    iget-object p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-static {p2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$000(Lcust/settings/custRingtone/FihRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$100(Lcust/settings/custRingtone/FihRingtonePickerActivity;Landroid/net/Uri;)V

    .line 152
    :cond_0
    return-void
.end method
