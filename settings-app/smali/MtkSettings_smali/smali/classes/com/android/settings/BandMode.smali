.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/settings/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 42
    const-string v0, "Automatic"

    const-string v1, "Europe"

    const-string v2, "United States"

    const-string v3, "Japan"

    const-string v4, "Australia"

    const-string v5, "Australia 2"

    const-string v6, "Cellular 800"

    const-string v7, "PCS"

    const-string v8, "Class 3 (JTACS)"

    const-string v9, "Class 4 (Korea-PCS)"

    const-string v10, "Class 5"

    const-string v11, "Class 6 (IMT2000)"

    const-string v12, "Class 7 (700Mhz-Upper)"

    const-string v13, "Class 8 (1800Mhz-Upper)"

    const-string v14, "Class 9 (900Mhz)"

    const-string v15, "Class 10 (800Mhz-Secondary)"

    const-string v16, "Class 11 (Europe PAMR 400Mhz)"

    const-string v17, "Class 15 (US-AWS)"

    const-string v18, "Class 16 (US-2500Mhz)"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 69
    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 94
    new-instance v0, Lcom/android/settings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$1;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 218
    new-instance v0, Lcom/android/settings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$2;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$BandListItem;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BandMode;->clearList()V

    .line 153
    nop

    .line 156
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 157
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 159
    array-length v0, p1

    if-nez v0, :cond_1

    .line 160
    const-string p1, "phone"

    const-string v0, "No Supported Band Modes"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_1
    aget v0, p1, v2

    .line 166
    if-lez v0, :cond_4

    .line 167
    iget-object v3, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    new-instance v4, Lcom/android/settings/BandMode$BandListItem;

    invoke-direct {v4, v2}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 169
    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_3

    .line 170
    aget v4, p1, v3

    if-nez v4, :cond_2

    .line 171
    goto :goto_1

    .line 173
    :cond_2
    new-instance v4, Lcom/android/settings/BandMode$BandListItem;

    aget v5, p1, v3

    invoke-direct {v4, v5}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 174
    iget-object v5, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 169
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_3
    goto :goto_2

    .line 181
    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    .line 183
    :goto_3
    const/16 p1, 0x13

    if-ge v2, p1, :cond_5

    .line 184
    new-instance p1, Lcom/android/settings/BandMode$BandListItem;

    invoke-direct {p1, v2}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 190
    return-void
.end method

.method private clearList()V
    .locals 3

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1201c9    # @string/band_mode_set 'Set'

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 194
    invoke-virtual {v1}, Lcom/android/settings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz p1, :cond_0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1201c7    # @string/band_mode_failed 'Unsuccessful'

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1201ca    # @string/band_mode_succeeded 'Successful'

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 205
    return-void
.end method

.method private loadBandList()V
    .locals 2

    .line 131
    const v0, 0x7f1201c8    # @string/band_mode_loading 'Loading Band List…'

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 141
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    .line 77
    const p1, 0x7f0d011e    # @layout/band_mode 'res/layout/band_mode.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->setContentView(I)V

    .line 79
    const p1, 0x7f1201cb    # @string/band_mode_title 'Set Radio Band Mode'

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    const p1, 0x7f0a0065    # @id/band

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 86
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003    # @android:layout/simple_list_item_1

    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 88
    iget-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/BandMode;->loadBandList()V

    .line 92
    return-void
.end method
