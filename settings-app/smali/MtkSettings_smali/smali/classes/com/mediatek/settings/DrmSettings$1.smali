.class Lcom/mediatek/settings/DrmSettings$1;
.super Ljava/lang/Object;
.source "DrmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/DrmSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/DrmSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DrmSettings;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/DrmSettings$1;->this$0:Lcom/mediatek/settings/DrmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object p1

    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result p1

    .line 75
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/mediatek/settings/DrmSettings$1;->this$0:Lcom/mediatek/settings/DrmSettings;

    invoke-static {p1}, Lcom/mediatek/settings/DrmSettings;->access$100(Lcom/mediatek/settings/DrmSettings;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1205a8    # @string/drm_reset_toast_msg 'Licenses have been deleted successfully.'

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$200()Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 81
    :cond_0
    const-string p1, "DrmSettings"

    const-string p2, "removeAllRights fail!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/mediatek/settings/DrmSettings;->access$002(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 85
    :cond_1
    return-void
.end method
