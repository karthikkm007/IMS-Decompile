.class public Lorg/codeaurora/ims/parser/SAXXMLParser;
.super Ljava/lang/Object;
.source "SAXXMLParser.java"


# static fields
.field private static sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

.field private static sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSAXXMLParser()Lorg/codeaurora/ims/parser/SAXXMLParser;
    .locals 1

    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/codeaurora/ims/parser/SAXXMLParser;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/SAXXMLParser;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    :cond_0
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-object v0
.end method

.method public static declared-synchronized parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;
    .locals 6

    const-class v4, Lorg/codeaurora/ims/parser/SAXXMLParser;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-direct {v3}, Lorg/codeaurora/ims/parser/SAXXMLHandler;-><init>()V

    sput-object v3, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    sget-object v3, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_2
    instance-of v3, v0, Lorg/codeaurora/ims/parser/InvalidConfVersionException;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SAXXMLHandler"

    const-string/jumbo v5, "Exception caught at SAXParser"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    :try_start_3
    instance-of v3, v0, Ljava/text/ParseException;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SAXXMLHandler"

    const-string/jumbo v5, "InValid Format , Exception in Parser"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getConfInfoHandle()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    return-object v0
.end method
