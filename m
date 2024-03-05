Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE0F8724D7
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXzy-0005zS-AI;
	Tue, 05 Mar 2024 16:50:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXzw-0005zL-M4
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=INvtwFBk6cWVU5VPmeSgHyt392BFcX2LNeDqGrwPc64=; b=giRmuh28qN+UcrIT8htZSeFRG2
 7tWtpoQDbQ2CfCmyFcF0zcaz+qET6dXYkCq6aYZrFyNG1DCwPMduefYvzQ80vL0HkPHcIifqyuN1K
 c7vqZp2TEk9X4AOIkmWWcqVoHxwZljef0e5OtFwn941R6eXfYXQg49OTci/DX09Xpag8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=INvtwFBk6cWVU5VPmeSgHyt392BFcX2LNeDqGrwPc64=; b=YCd2du3QO2O8ZiRxq2O0XJ0cid
 uG1/rCAOwVFrUNR9X70D23KhDmXKyVUw2CJeILLqOr0HgXO6HuvHz6fK0TQynjfw80fkCWjxIhJvT
 0LvOi4Z/nCThRP/zxECkyVdXRe7y5CadfqC7hCUsO096VWQE8USWqXYXKObDb3nd7Ns4=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXzo-00058c-Jw for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-0003TS-C4; Tue, 05 Mar 2024 17:27:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-004aQI-VL; Tue, 05 Mar 2024 17:27:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdb-000BLj-2s;
 Tue, 05 Mar 2024 17:27:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Date: Tue,  5 Mar 2024 17:27:01 +0100
Message-ID: <c8a6cd95ad7a8220e211373c44cdaba2a8c06052.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1875;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=FyCsWruoC1e6oDKNiL0FZTU4cne9tLSFdtFtfPDhURY=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fW5FI9Pl2eYc9S7udbUqv4talSHMv5Gnj+m
 dtmGRFIsPGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH1gAKCRCPgPtYfRL+
 Tsr6B/473TqNAQBjK8GlAvYP7veD2yp/e5x+oP7O35LL3fb9BPRNGH93sGGVIdKeWPjSxxtAnLe
 qjlt7EBPcBPH5rGsx9J1qdKTellNIX6jGhzohanZXouxtOb1CSfN9GCwNS9MafbeIRc+wQf/MSC
 sbZnCE3SliiA5qevTGZRyvTWJVfeS3gNjvOymoT4JfZFIu1zxIWUwDY7ehxYtWceHmI+icnQqXq
 OjJUrJEjxwR11kp/YUiNsW1t2TLmD+GiDeRTcEvA840NTLu9uxwH9Fi9KV40C0yWKotCF2O7NZR
 cnU/VYIWM5NB2mE0p2vpvuj2WR83hf5qZJpIEXJL02Uqnlhl
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
X-Headers-End: 1rhXzo-00058c-Jw
Subject: [Openipmi-developer] [PATCH 4/6] ipmi: ipmi_ssif: Convert to
 platform remove callback returning void
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
ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lw
bWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwppbmRleCAxZjc2
MDBjMzYxZTYuLjNmNTA5YTIyMjE3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9zc2lmLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKQEAgLTIwNzEsNyAr
MjA3MSw3IEBAIHN0YXRpYyBpbnQgc3NpZl9wbGF0Zm9ybV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpkZXYpCiAJcmV0dXJuIGRtaV9pcG1pX3Byb2JlKGRldik7CiB9CiAKLXN0YXRpYyBp
bnQgc3NpZl9wbGF0Zm9ybV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqZGV2KQorc3Rh
dGljIHZvaWQgc3NpZl9wbGF0Zm9ybV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqZGV2
KQogewogCXN0cnVjdCBzc2lmX2FkZHJfaW5mbyAqYWRkcl9pbmZvID0gZGV2X2dldF9kcnZkYXRh
KCZkZXYtPmRldik7CiAKQEAgLTIwNzksNyArMjA3OSw2IEBAIHN0YXRpYyBpbnQgc3NpZl9wbGF0
Zm9ybV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqZGV2KQogCWxpc3RfZGVsKCZhZGRy
X2luZm8tPmxpbmspOwogCWtmcmVlKGFkZHJfaW5mbyk7CiAJbXV0ZXhfdW5sb2NrKCZzc2lmX2lu
Zm9zX211dGV4KTsKLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2VfaWQgc3NpZl9wbGF0X2lkc1tdID0gewpAQCAtMjA5Miw3ICsyMDkxLDcgQEAgc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgaXBtaV9kcml2ZXIgPSB7CiAJCS5uYW1lID0gREVW
SUNFX05BTUUsCiAJfSwKIAkucHJvYmUJCT0gc3NpZl9wbGF0Zm9ybV9wcm9iZSwKLQkucmVtb3Zl
CQk9IHNzaWZfcGxhdGZvcm1fcmVtb3ZlLAorCS5yZW1vdmVfbmV3CT0gc3NpZl9wbGF0Zm9ybV9y
ZW1vdmUsCiAJLmlkX3RhYmxlICAgICAgID0gc3NpZl9wbGF0X2lkcwogfTsKIAotLSAKMi40My4w
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5p
cG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9v
cGVuaXBtaS1kZXZlbG9wZXIK
