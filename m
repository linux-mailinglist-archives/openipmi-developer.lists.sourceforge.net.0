Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A218724D2
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXzO-0005yO-Us;
	Tue, 05 Mar 2024 16:50:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXzM-0005xZ-PF
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wfk9+SFJrZV1F1Hf8JbtziMGoRWDpP9wecRuOeUoBnA=; b=i+M/1nAiiqt+C5RrOGA/lwlJ76
 RfegSyQ3PKnUmt75fcnKhDWTors6cUCGgO17yYsznDQERiVY9e7tQmyK3jMsP24X+JC6bSle3TZRN
 ziL9q02TK7pdHDYrxUdFSCPrgsuxO0z498UYUS89ihI3JPdZumC3HKdhgpio8c+FXgPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wfk9+SFJrZV1F1Hf8JbtziMGoRWDpP9wecRuOeUoBnA=; b=TBSCTwQlAGnICN/inb7JoT//RP
 xMdHBJAxbmddIgZsSZk1TpSP9t27MYLCyBREEEg55Eng1HHBK1C3FWa6bSluTrQ4TGGFjWs1fjSKK
 dUT0SamjBCKmy290jixplej9SoZuDVSsL/R7kDAOYkYhY7CyieprDH77NhWK/XCYOLvQ=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXz8-00053M-Hz for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:49:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-0003TF-Tg; Tue, 05 Mar 2024 17:27:31 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-004aQ9-FS; Tue, 05 Mar 2024 17:27:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdb-000BLW-1I;
 Tue, 05 Mar 2024 17:27:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Date: Tue,  5 Mar 2024 17:26:58 +0100
Message-ID: <dc5e67fb45c8c673cbf3cdbc4997c5deb3a700fe.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1732;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=pPMFI5+SQuEZiCUD81M8prt4jPWlDXep511Ib5OXWmU=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fSksne9GqktgRMd+IypQqj7qdcTuMzlO1zL
 ZAsrcghOiWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH0gAKCRCPgPtYfRL+
 Tiz2B/4lXIxYY8nweFcUiGPApDcMTfV3e4xUvBKw42bgFTBwWK1WR4XOY5HAiHRSPYIiSsO+wsq
 nd6QgJPkan1WUdE26ZCLRvrQokVZnaYGDyqyMGYW3D+tNCe3bOcECc3if3kwubzHfJ3mRf3crOh
 WCvV8pe+podmtNc/3hx3G7qQhLTXxBTWxWg1Qq4u4dOPkJ+CkQ0cQ0xFSWpSNVjMYMzRiYdC7F3
 Ungz7ZW4v51zSgDYihHgth94l3i3H8MgYYIZbaYBCiAM7AxXAKWnmkPuYxa9Kv9y3BwYdLrIlKT
 I+XdmUWTWUZflXcLfu6+CNJuyDady/pcXw8M0Ypip1KxYJX7
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The .remove() callback for a platform driver returns an int
 which makes many driver authors wrongly assume it's possible to do error
 handling by returning an error code. However the value returned is [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.203.201.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhXz8-00053M-Hz
Subject: [Openipmi-developer] [PATCH 1/6] ipmi: bt-bmc: Convert to platform
 remove callback returning void
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
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydApmcm9tIGVtaXR0aW5n
IGEgd2FybmluZykgYW5kIHRoaXMgdHlwaWNhbGx5IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3Mu
CgpUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYSBxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2Fs
bGJhY2sgcmV0dXJuCnZvaWQuIEluIHRoZSBmaXJzdCBzdGVwIG9mIHRoaXMgcXVlc3QgYWxsIGRy
aXZlcnMgYXJlIGNvbnZlcnRlZCB0bwoucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJldHVy
bnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwphcmUgY29udmVydGVkLCAucmVt
b3ZlX25ldygpIHdpbGwgYmUgcmVuYW1lZCB0byAucmVtb3ZlKCkuCgpUcml2aWFsbHkgY29udmVy
dCB0aGlzIGRyaXZlciBmcm9tIGFsd2F5cyByZXR1cm5pbmcgemVybyBpbiB0aGUgcmVtb3ZlCmNh
bGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL2NoYXIvaXBtaS9idC1ibWMuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkv
YnQtYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYwppbmRleCA3NDUwOTA0ZTMzMGEu
LmI4YjljMDdkM2I1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvYnQtYm1jLmMKKysr
IGIvZHJpdmVycy9jaGFyL2lwbWkvYnQtYm1jLmMKQEAgLTQ1OSwxNCArNDU5LDEzIEBAIHN0YXRp
YyBpbnQgYnRfYm1jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJu
IDA7CiB9CiAKLXN0YXRpYyBpbnQgYnRfYm1jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQorc3RhdGljIHZvaWQgYnRfYm1jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogewogCXN0cnVjdCBidF9ibWMgKmJ0X2JtYyA9IGRldl9nZXRfZHJ2ZGF0YSgmcGRl
di0+ZGV2KTsKIAogCW1pc2NfZGVyZWdpc3RlcigmYnRfYm1jLT5taXNjZGV2KTsKIAlpZiAoYnRf
Ym1jLT5pcnEgPCAwKQogCQlkZWxfdGltZXJfc3luYygmYnRfYm1jLT5wb2xsX3RpbWVyKTsKLQly
ZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYnRfYm1jX21h
dGNoW10gPSB7CkBAIC00ODIsNyArNDgxLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgYnRfYm1jX2RyaXZlciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlID0gYnRfYm1jX21hdGNoLAog
CX0sCiAJLnByb2JlID0gYnRfYm1jX3Byb2JlLAotCS5yZW1vdmUgPSBidF9ibWNfcmVtb3ZlLAor
CS5yZW1vdmVfbmV3ID0gYnRfYm1jX3JlbW92ZSwKIH07CiAKIG1vZHVsZV9wbGF0Zm9ybV9kcml2
ZXIoYnRfYm1jX2RyaXZlcik7Ci0tIAoyLjQzLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
