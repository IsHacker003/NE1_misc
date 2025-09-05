.class Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;
.super Landroid/os/AsyncTask;
.source "CustSimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerDisabler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field newProvisionedState:I

.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method private constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 455
    const/4 p1, 0x0

    iput p1, p0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->newProvisionedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/sim/CustSimPreference;Lcust/settings/sim/CustSimPreference$1;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;-><init>(Lcust/settings/sim/CustSimPreference;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 467
    nop

    .line 484
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 453
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 489
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->newProvisionedState:I

    invoke-static {v0, p1, v1}, Lcust/settings/sim/CustSimPreference;->access$1100(Lcust/settings/sim/CustSimPreference;II)V

    .line 490
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 459
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 461
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {v0}, Lcust/settings/sim/CustSimPreference;->access$1000(Lcust/settings/sim/CustSimPreference;)V

    .line 463
    return-void
.end method
