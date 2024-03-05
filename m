Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCC08724D8
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhY0A-0000J9-Ax;
	Tue, 05 Mar 2024 16:50:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhY07-0000J1-IG
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sZcRFis7hQG087xREqhjtx2Gr9cYQsw2jZWBGi9HGjU=; b=ZO4uXQEoQsChO5jTrtAn7n/RT7
 f8fIpOYFyWLD/hhPjssBJMNJ8lr2xdFt3Cl9Y3Zn60LiWMWzv9Icu/Z7wMjSRmkHoSf0BLW4hS5Lu
 L1oQOT7gEWuijpLvZbV7fDx2J/OpxceqA2UlOFXOim64AseNRQU8xjwRVOQBknrtkpqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sZcRFis7hQG087xREqhjtx2Gr9cYQsw2jZWBGi9HGjU=; b=i
 WYZz0ehFwA5lA/ain0hijaxuWmF7VqlUyYRh5MVdrDLoceT8IxeyOxVs8gpZCzHODSTYuGWgoT/CP
 +yxXoaSCPI+LPUn0jZHAT7TYRhhH3mPx/uDXTaGFD/IDNX14lnlFrGZD3EqcRhjcPelEnZ1/W11iZ
 qW7vlnmVFxzN/2Ac=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhY01-00059W-NH for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXde-0003TE-Di; Tue, 05 Mar 2024 17:27:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-004aQ6-BQ; Tue, 05 Mar 2024 17:27:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdb-000BLT-0m;
 Tue, 05 Mar 2024 17:27:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joel Stanley <joel@jms.id.au>, Avi Fishman <avifishman70@gmail.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>
Date: Tue,  5 Mar 2024 17:26:57 +0100
Message-ID: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1423;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=akuyQtqoo/B3hV/chnHG5wVOgTCyAThdceXHF/fH15A=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fRz5wnO886UiVtmDZppCw512REhKLTJ37/R
 cjMJ8BIAQOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH0QAKCRCPgPtYfRL+
 Tt0QCACfWXFQXGllPYlGx99A5WMWmjUJ3qKWPt2/V2+WSj9FOOD4XPVrXQIzPGNpJtaU9YA3azZ
 TDx31hB9G1IrJRDVStMpNcrqzVTCqVkez6rIqv71yrq9Nkkzm+ljiiwUbpg3q2tXh+g+DwA75b4
 +h2OsgZmurirtKIn6Y4bosTeQXrPut2pfqGguD//L/QXtr932vSPJHNsBLXRpmx/kzgiPTV4iWY
 KQRXsODp+dMAsCr5bF2w3YmA6DV/qfLu/ET6bpsNg7S4KRY8limLnmvP1/gvjyAtrf0x9uNcY4Z
 ieCRCLSfiQ2a4cy8NcK+q0LYg0TiPcZY4OKxt916rKV9TFrS
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
 Content preview:  Hello,
 this series converts all drivers below drivers/char/ipmi
 to struct platform_driver::remove_new(). See commit 5c5a7680e67b ("platform:
 Provide a remove callback that returns no value") for an extended [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.203.201.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhY01-00059W-NH
Subject: [Openipmi-developer] [PATCH 0/6] ipmi: Convert to platform remove
 callback returning void
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
Cc: Benjamin Fair <benjaminfair@google.com>, linux-aspeed@lists.ozlabs.org,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Nicholas Piggin <npiggin@gmail.com>, kernel@pengutronix.de,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8sCgp0aGlzIHNlcmllcyBjb252ZXJ0cyBhbGwgZHJpdmVycyBiZWxvdyBkcml2ZXJzL2No
YXIvaXBtaSB0byBzdHJ1Y3QKcGxhdGZvcm1fZHJpdmVyOjpyZW1vdmVfbmV3KCkuIFNlZSBjb21t
aXQgNWM1YTc2ODBlNjdiICgicGxhdGZvcm06IFByb3ZpZGUgYQpyZW1vdmUgY2FsbGJhY2sgdGhh
dCByZXR1cm5zIG5vIHZhbHVlIikgZm9yIGFuIGV4dGVuZGVkIGV4cGxhbmF0aW9uIGFuZCB0aGUK
ZXZlbnR1YWwgZ29hbC4KCkFsbCBjb252ZXJzYXRpb25zIGFyZSB0cml2aWFsLCBiZWNhdXNlIHRo
ZWlyIC5yZW1vdmUoKSBjYWxsYmFja3MKcmV0dXJuZWQgemVybyB1bmNvbmRpdGlvbmFsbHkuCgpU
aGVyZSBhcmUgbm8gaW50ZXJkZXBlbmRlbmNpZXMgYmV0d2VlbiB0aGVzZSBwYXRjaGVzLCBzbyB0
aGV5IGNvdWxkIGJlCnBpY2tlZCB1cCBpbmRpdmlkdWFsbHkuIEJ1dCBJJ2QgaG9wZSB0aGF0IHRo
ZXkgZ2V0IHBpY2tlZCB1cCBhbGwKdG9nZXRoZXIgYnkgQ29yZXkuCgpCZXN0IHJlZ2FyZHMKVXdl
CgpVd2UgS2xlaW5lLUvDtm5pZyAoNik6CiAgaXBtaTogYnQtYm1jOiBDb252ZXJ0IHRvIHBsYXRm
b3JtIHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAogIGlwbWk6IGlwbWlfcG93ZXJudjog
Q29udmVydCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBpcG1p
OiBpcG1pX3NpX3BsYXRmb3JtOiBDb252ZXJ0IHRvIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayBy
ZXR1cm5pbmcgdm9pZAogIGlwbWk6IGlwbWlfc3NpZjogQ29udmVydCB0byBwbGF0Zm9ybSByZW1v
dmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBpcG1pOiBrY3NfYm1jX2FzcGVlZDogQ29udmVy
dCB0byBwbGF0Zm9ybSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQKICBpcG1pOiBrY3Nf
Ym1jX25wY203eHg6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmlu
ZyB2b2lkCgogZHJpdmVycy9jaGFyL2lwbWkvYnQtYm1jLmMgICAgICAgICAgIHwgNSArKy0tLQog
ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9wb3dlcm52LmMgICAgIHwgNiArKy0tLS0KIGRyaXZlcnMv
Y2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYyB8IDYgKystLS0tCiBkcml2ZXJzL2NoYXIvaXBt
aS9pcG1pX3NzaWYuYyAgICAgICAgfCA1ICsrLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1j
X2FzcGVlZC5jICAgfCA2ICsrLS0tLQogZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19ucGNtN3h4
LmMgIHwgNiArKy0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMjIgZGVs
ZXRpb25zKC0pCgpiYXNlLWNvbW1pdDogMTFhZmFjMTg3Mjc0YTYxNzdhN2FjODI5OTdmODY5MWMw
ZjQ2OWU0MQotLSAKMi40My4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
