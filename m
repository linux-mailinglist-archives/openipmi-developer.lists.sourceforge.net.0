Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A631043E0A8
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Oct 2021 14:14:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mg4J1-000468-QI; Thu, 28 Oct 2021 12:14:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <likunkun@bytedance.com>) id 1mfoN3-0001Sd-Ew
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 19:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=10iBP9jh9mkSwxIoTv0VVNQ92fx2y1+MEgwu/CyOFlM=; b=dP1wgQURfXm5jyaO/NHrlPoiMK
 aZj9Ft6ncUpCSaVCw3IF+7Dim6txRGNqWpKvR0A7uzwFW5f73KWpeDbcXP5XuMRsHH9vFlH9bs7JG
 0btGhHOUT+/wr5z0afEjVKiciOhJXsCgAUbxd29XDfk0enWoLWUjUrVCIZS0JHTUT/Ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=10iBP9jh9mkSwxIoTv0VVNQ92fx2y1+MEgwu/CyOFlM=; b=J
 BKv7IllQUzebpXPGFfc7Ihkihnry/01yzFLTGCteDgPG9BCq2XpV9LCF3dLTz0Nu0tnFHQtdYuPVW
 ISiWINjAWaVPu5Irrc/AYjiCLuLsFshM2RpBvqFJnisf2J/MuLa/UaGGxTT04yxJDxoO7dmA609++
 D7jFLi5AaOI7VBQQ=;
Received: from mail-pg1-f175.google.com ([209.85.215.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mfoMu-001yvq-6l
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Oct 2021 19:13:57 +0000
Received: by mail-pg1-f175.google.com with SMTP id h193so3944738pgc.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 12:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=10iBP9jh9mkSwxIoTv0VVNQ92fx2y1+MEgwu/CyOFlM=;
 b=aTG1wyIkDrZ9a0nJBnaMNr5Y9EVfESyq+LWT/zYNIn4PdgLwKfeXd2deQM+k9Kwxra
 NwgPlB2+QnZ41d34SpIj2GSOMkTGsM5zrEgEPJone1cGqg25FXQNOAIM49LP6qw1lDtp
 HAz9oURmKZWr4Pp4I7qPuGIKRom23Q8HqoW+2kVtxLcAgvHmeBwQRijBIyi2j93Sc5QG
 2X9+DwvVjAo76PvwPwxw/WvyOicFe9zq9FvcmQdfIn7FfpYpVEhSEQyH0Ne7c0+ni65e
 E27gDAlyxDGQEpAd5xB8Q/NbSk4zghtwgCkCXzQhfwgVESvPs9lXLedOhJwxkAeS1+sL
 poqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=10iBP9jh9mkSwxIoTv0VVNQ92fx2y1+MEgwu/CyOFlM=;
 b=fQjIF9iXNUYaOAr6HV3+ThQ/Qsea/4j4GLMucrx0SkBD/oHFeeoNWcLm58agM1hPex
 uc+5j4MnJuFiCEFH32IWmSxxr2z4SNH37pyoSFDYAqkW+qZOVtAid/aclwdSYB//XcAa
 YYh1aivVLWMd7phcs/bfspcv9ujYTqjM1acTcgs6aTpHAHLL1jkjLXSH16wxMz1hX+wB
 3mK4RedOf9PW2+okz396o4EoaPkPazKHK1hqVRACMZZAjpulWEl7UzvCFhGXTUn6qtuE
 60K6oXCKlJI/v1/tJxgn6SposzBTC9xsGZElOPB7BNApzHUL08XMS3cUENxhWq7k3Kht
 kB8w==
X-Gm-Message-State: AOAM533XJnRp+NyXkr+xAaWIWTuO7TQzW8Ketqv6BavKZfXdap/qriq5
 FpoelsLzFXa8Yw6N0Z89vEPapB86xAepQw==
X-Google-Smtp-Source: ABdhPJw6guKsVoEp2aATvHsCLrNKLD/Ijd0OJs19x2EcTOpUiplKmQQaF/YTLR7OimDqRjyDSFK0wQ==
X-Received: by 2002:a05:6a00:198a:b0:44c:ae90:85fc with SMTP id
 d10-20020a056a00198a00b0044cae9085fcmr22874995pfl.1.1635217122167; 
 Mon, 25 Oct 2021 19:58:42 -0700 (PDT)
Received: from FVFCG2APL414.bytedance.net ([139.177.225.250])
 by smtp.gmail.com with ESMTPSA id u3sm5125448pfg.77.2021.10.25.19.58.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Oct 2021 19:58:41 -0700 (PDT)
From: Kunkun Li <likunkun@bytedance.com>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Tue, 26 Oct 2021 10:58:34 +0800
Message-Id: <20211026025834.82766-1-likunkun@bytedance.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  During multipart test, cmd(6, 7, 8) or cmd(6, 7,
 7) will be sent
 continuously. The pressure test found some BMC systems cannot process messages
 in time, resulting in read_response continues to receive error messages from
 i2c. Retry mechanism will takes 10s, and finally set not s [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mfoMu-001yvq-6l
X-Mailman-Approved-At: Thu, 28 Oct 2021 12:14:47 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif: Add msleep in multipart
 test
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, Kunkun Li <likunkun@bytedance.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RHVyaW5nIG11bHRpcGFydCB0ZXN0LCBjbWQoNiw3LDgpIG9yIGNtZCg2LDcsNykgd2lsbApiZSBz
ZW50IGNvbnRpbnVvdXNseS4KClRoZSBwcmVzc3VyZSB0ZXN0IGZvdW5kIHNvbWUgQk1DIHN5c3Rl
bXMgY2Fubm90IHByb2Nlc3MKbWVzc2FnZXMgaW4gdGltZSwgcmVzdWx0aW5nIGluIHJlYWRfcmVz
cG9uc2UgY29udGludWVzIHRvIHJlY2VpdmUKZXJyb3IgbWVzc2FnZXMgZnJvbSBpMmMuClJldHJ5
IG1lY2hhbmlzbSB3aWxsIHRha2VzIDEwcywgYW5kIGZpbmFsbHkgc2V0IG5vdCBzdXBwb3J0Cm11
bHRpcGFydCB0cmFuc21pdC4KClNvLCB0byB3b3JrIGFyb3VuZCB0aGlz77yMYWRkIG1zbGVlcCBh
ZnRlciBzZW5kaW5nIGNtZCA2IGFuZApjbWQgNyByZXNwZWN0aXZlbHkuIFRoZSBwcm9ibGVtIGRp
ZCBub3QgYXBwZWFyIGFnYWluIGluCnByZXNzdXJlIHRlc3QuCgpTaWduZWQtb2ZmLWJ5OiBLdW5r
dW4gTGkgPGxpa3Vua3VuQGJ5dGVkYW5jZS5jb20+Ci0tLQogZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9p
cG1pX3NzaWYuYwppbmRleCAyMGQ1YWY5Mjk2NmQuLjY1ODQxNzk4ZmFmZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMKQEAgLTE0NTMsNiArMTQ1Myw3IEBAIHN0YXRpYyBpbnQgc3RhcnRfbXVsdGlwYXJ0
X3Rlc3Qoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKIAlyZXQgPSBpMmNfc21idXNfd3JpdGVf
YmxvY2tfZGF0YShjbGllbnQsCiAJCQkJCSBTU0lGX0lQTUlfTVVMVElfUEFSVF9SRVFVRVNUX1NU
QVJULAogCQkJCQkgMzIsIG1zZyk7CisJbXNsZWVwKFNTSUZfTVNHX01TRUMpOwogCWlmIChyZXQp
IHsKIAkJcmV0cnlfY250LS07CiAJCWlmIChyZXRyeV9jbnQgPiAwKQpAQCAtMTQ2Nyw2ICsxNDY4
LDcgQEAgc3RhdGljIGludCBzdGFydF9tdWx0aXBhcnRfdGVzdChzdHJ1Y3QgaTJjX2NsaWVudCAq
Y2xpZW50LAogCXJldCA9IGkyY19zbWJ1c193cml0ZV9ibG9ja19kYXRhKGNsaWVudCwKIAkJCQkJ
IFNTSUZfSVBNSV9NVUxUSV9QQVJUX1JFUVVFU1RfTUlERExFLAogCQkJCQkgMzIsIG1zZyArIDMy
KTsKKwltc2xlZXAoU1NJRl9NU0dfTVNFQyk7CiAJaWYgKHJldCkgewogCQlkZXZfZXJyKCZjbGll
bnQtPmRldiwgIkNvdWxkIG5vdCB3cml0ZSBtdWx0aS1wYXJ0IG1pZGRsZSwgdGhvdWdoIHRoZSBC
TUMgc2FpZCBpdCBjb3VsZCBoYW5kbGUgaXQuICBKdXN0IGxpbWl0IHNlbmRzIHRvIG9uZSBwYXJ0
LlxuIik7CiAJCXJldHVybiByZXQ7Ci0tIAoyLjExLjAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
