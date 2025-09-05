.class Lcust/settings/sim/CustSimPreference$6;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimPreference;->handleUserRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$6;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 380
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$6;->this$0:Lcust/settings/sim/CustSimPreference;

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$6;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$300(Lcust/settings/sim/CustSimPreference;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    .line 381
    return-void
.end method
