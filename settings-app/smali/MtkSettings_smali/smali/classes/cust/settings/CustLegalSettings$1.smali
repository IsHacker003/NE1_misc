.class Lcust/settings/CustLegalSettings$1;
.super Ljava/lang/Object;
.source "CustLegalSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/CustLegalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/CustLegalSettings;


# direct methods
.method constructor <init>(Lcust/settings/CustLegalSettings;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcust/settings/CustLegalSettings$1;->this$0:Lcust/settings/CustLegalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcust/settings/CustLegalSettings$1;->this$0:Lcust/settings/CustLegalSettings;

    invoke-static {v0}, Lcust/settings/CustLegalSettings;->access$000(Lcust/settings/CustLegalSettings;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 61
    :try_start_0
    iget-object p1, p0, Lcust/settings/CustLegalSettings$1;->this$0:Lcust/settings/CustLegalSettings;

    invoke-virtual {p1}, Lcust/settings/CustLegalSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :cond_0
    :goto_0
    return-void
.end method
