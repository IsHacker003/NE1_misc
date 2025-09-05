.class public Lcom/mediatek/nfc/NfcServiceHelper;
.super Ljava/lang/Object;
.source "NfcServiceHelper.java"


# static fields
.field private static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckedServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditMode:Z

.field private mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

.field private mServiceEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/mediatek/nfc/NfcServiceHelper$1;

    invoke-direct {v0}, Lcom/mediatek/nfc/NfcServiceHelper$1;-><init>()V

    sput-object v0, Lcom/mediatek/nfc/NfcServiceHelper;->sServiceCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mContext:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    .line 52
    return-void
.end method

.method private canDoAction()Z
    .locals 4

    .line 168
    nop

    .line 169
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->testServiceEntryList(Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "NfcServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can do this action ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v0
.end method


# virtual methods
.method getAllServiceCount()I
    .locals 1

    .line 130
    nop

    .line 131
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 134
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSelectServiceCount()I
    .locals 3

    .line 138
    nop

    .line 139
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    .line 141
    invoke-virtual {v2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 144
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    return v1
.end method

.method getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    return-object v0
.end method

.method initServiceList()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getServiceEntryList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "NfcServiceHelper"

    const-string v1, "Cannot get ServiceEntry list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method restoreCheckedState()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    .line 115
    new-instance v2, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .line 115
    invoke-virtual {v1, v2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->setWantEnabled(Ljava/lang/Boolean;)V

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    return-void

    .line 111
    :cond_2
    :goto_1
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    const-string v0, "NfcServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreState mEditMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "checked_services"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    .line 107
    :cond_0
    return-void
.end method

.method saveChange()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->commitServiceEntryList(Ljava/util/List;)V

    .line 88
    :cond_0
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 3

    .line 91
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mEditMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    .line 94
    invoke-virtual {v1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWantEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "checked_services"

    iget-object v1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mCheckedServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    :cond_2
    return-void
.end method

.method setEditMode(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mEditMode:Z

    .line 123
    return-void
.end method

.method setEnabled(Lcom/mediatek/nfc/NfcServicePreference;Z)Z
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    .line 151
    iget-object v3, p1, Lcom/mediatek/nfc/NfcServicePreference;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWantEnabled()Ljava/lang/Boolean;

    move-result-object p1

    .line 153
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v0}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->setWantEnabled(Ljava/lang/Boolean;)V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcServiceHelper;->canDoAction()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    const/4 p1, 0x1

    return p1

    .line 157
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->setWantEnabled(Ljava/lang/Boolean;)V

    .line 158
    return v2

    .line 161
    :cond_1
    goto :goto_0

    .line 162
    :cond_2
    return v2
.end method

.method sortList()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServiceHelper;->mServiceEntryList:Ljava/util/List;

    sget-object v1, Lcom/mediatek/nfc/NfcServiceHelper;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    :cond_0
    return-void
.end method
