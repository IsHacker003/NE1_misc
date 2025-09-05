.class public Lcom/mediatek/lbs/em2/utils/AgpsConfig;
.super Ljava/lang/Object;
.source "AgpsConfig.java"


# instance fields
.field public agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

.field public cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

.field public cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

.field public curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

.field public gnssSetting:Lcom/mediatek/lbs/em2/utils/GnssSetting;

.field public suplProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/lbs/em2/utils/SuplProfile;",
            ">;"
        }
    .end annotation
.end field

.field public upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->suplProfiles:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/SuplProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 18
    new-instance v0, Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/CdmaProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    .line 19
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/AgpsSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    .line 20
    new-instance v0, Lcom/mediatek/lbs/em2/utils/CpSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/CpSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    .line 21
    new-instance v0, Lcom/mediatek/lbs/em2/utils/UpSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/UpSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    .line 22
    new-instance v0, Lcom/mediatek/lbs/em2/utils/GnssSetting;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/GnssSetting;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->gnssSetting:Lcom/mediatek/lbs/em2/utils/GnssSetting;

    .line 23
    return-void
.end method


# virtual methods
.method public getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    return-object v0
.end method

.method public getCdmaProfile()Lcom/mediatek/lbs/em2/utils/CdmaProfile;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    return-object v0
.end method

.method public getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    return-object v0
.end method

.method public getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    return-object v0
.end method

.method public getGnssSetting()Lcom/mediatek/lbs/em2/utils/GnssSetting;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->gnssSetting:Lcom/mediatek/lbs/em2/utils/GnssSetting;

    return-object v0
.end method

.method public getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 54
    const-string v0, ""

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### SuplProfiles ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->suplProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### SuplProfile ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### CdmaProfile ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cdmaProfile:Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### AgpsSetting ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->agpsSetting:Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### CpSetting ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->cpSetting:Lcom/mediatek/lbs/em2/utils/CpSetting;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### UpSetting ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->upSetting:Lcom/mediatek/lbs/em2/utils/UpSetting;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "### GnssSetting ###\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->gnssSetting:Lcom/mediatek/lbs/em2/utils/GnssSetting;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method
