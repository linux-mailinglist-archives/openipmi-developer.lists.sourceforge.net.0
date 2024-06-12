Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E4A907CEA
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jun 2024 21:50:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHqSS-0004HE-Gt;
	Thu, 13 Jun 2024 19:50:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1sHFhh-00053k-LT
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EBAtrRw3IsjVN4466JhOY7FCejNziv5PE0AxDPMJel4=; b=cFQEAoVWYbQBajudVDBC9+b/Gn
 mgwQDNa5eY4lOIW8rtXCunCUUQ9ltlsTsVWm8Ij/cYYzigswKQHN7L+MHZlZlb2G8cRfnPDwccByI
 1o/Jh1qVIqa9M3FsIgwyKGeeKi7fscQhUOrID4KIKj5iwKIEbZSmFrXGe4Lt2GT0uhE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EBAtrRw3IsjVN4466JhOY7FCejNziv5PE0AxDPMJel4=; b=Yqus3Y81BabSnftyB8F9i4jrXW
 EGhMzaz3V5foXl2UwCJqr2230Pk8DPT6VzfxKW6gIbIHMWLpHJ5gnBDRr97RhVdOBuUBGek53mCF3
 LFTJD3FJZ0CLLHRQxTR5PLyFO4Pg0xjNxh+kFN7xneKK/GVZzJsUUlm+PfyGFY5NXgus=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sHFhi-00071U-6s for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:22 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-6f8d0a00a35so4436329a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Jun 2024 21:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718166911; x=1718771711; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EBAtrRw3IsjVN4466JhOY7FCejNziv5PE0AxDPMJel4=;
 b=P8lA/x31gfanzMQO7ZHKDskvYE+bFuk66gCK8yVICdtwjhpjly0fs6lKKHhzS0Keby
 +Mfa1RMlPk5v6J0+AKGwgi4PleIYPI0WJ3sT6nZ7fWYZE5IZbPQXsYv5nhczxVEmF7UX
 yZPRTM0u98AFOavIV1grN2aGkgGLeSTyFticiP98c+ZqJXL2HDHCCNN78FNdZ8eX+Pcl
 +rMzhRqvL67t0T/rHJFJNp8DpF6jatAUA6bZhnz9/L0UDzZIr513M6p4ReqQMfAgZ9ME
 rFfDgKrIF/UMtXRCpKid4sx2qzDDY0P+Z1HSoBdlhvyB6O/LHrTvhr3sIS12DMHkdtEa
 jMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718166911; x=1718771711;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EBAtrRw3IsjVN4466JhOY7FCejNziv5PE0AxDPMJel4=;
 b=BgJd8PN4K5LBk8fUf3GPmLaUYOxCE7wL3SGtqTuvl1NbkJXAJFb82X+V+ag68DLmYO
 QUpJjU1uLR5cKX5kbJtCo3I2N0x3IRJr2keJ2jnj+jHdDVRJbmjFIxe8HKnTTkyx8bD1
 zCngCIh8sVmcAvS2qfc3gli25tiJL+bWc2Fy96bL+DIf3KBr+eIxJH2Fa8ODTc5afuud
 OcUV/hOVfMgsQP16uT5KwFcEnxGPRj5z4Vq2uTsR768JLHvt1Loz/L08XB3RG90BPWh5
 E7wCTZN7wvSacZ+UfpTXVOV5QB7keITJBFGBieclch0n1P8yxFK6wD0rT7opOPXsyuDX
 TaJg==
X-Gm-Message-State: AOJu0YzldsuBHsRCaxus25hyvEMsmdrvk83cgA/xKOrLnWRcrlCFwwqY
 nvbA/SOUgJqF0XknYlDkOq03lwrhfzFv8/oB9BZYYJf/FKRZblzZ
X-Google-Smtp-Source: AGHT+IEkBZAViksldFhdGgOs9b8r6qLPy8cm7BY0Le7mrdkX1xXzmFBIocpy1+EtnriZdKxr01utIg==
X-Received: by 2002:a9d:64cd:0:b0:6f9:60e4:5312 with SMTP id
 46e09a7af769-6fa1bf86359mr721799a34.21.1718166910686; 
 Tue, 11 Jun 2024 21:35:10 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-6de276061e3sm9021275a12.80.2024.06.11.21.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jun 2024 21:35:10 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>
Date: Wed, 12 Jun 2024 12:32:55 +0800
Message-Id: <20240612043255.1849007-3-potin.lai.pt@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In ARM SBMR document, the host can chosse to not read back
    the response of “Send Boot Progress Code” command. To avoid SSIF being
    in a wrong state due to host not read back the response, add the implementation
    of "arm-sbmr,skip-bootprogress-response" property for skipping the response
    of "Send Boot Progress C [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.210.51 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.210.51 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [potin.lai.pt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.51 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHFhi-00071U-6s
X-Mailman-Approved-At: Thu, 13 Jun 2024 19:50:00 +0000
Subject: [Openipmi-developer] [PATCH 2/2] ipmi: ssif_bmc: support skipping
 ARM SBMR bootprogress response
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SW4gQVJNIFNCTVIgZG9jdW1lbnQsIHRoZSBob3N0IGNhbiBjaG9zc2UgdG8gbm90IHJlYWQgYmFj
ayB0aGUgcmVzcG9uc2Ugb2YK4oCcU2VuZCBCb290IFByb2dyZXNzIENvZGXigJ0gY29tbWFuZC4K
ClRvIGF2b2lkIFNTSUYgYmVpbmcgaW4gYSB3cm9uZyBzdGF0ZSBkdWUgdG8gaG9zdCBub3QgcmVh
ZCBiYWNrIHRoZQpyZXNwb25zZSwgYWRkIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiAiYXJtLXNibXIs
c2tpcC1ib290cHJvZ3Jlc3MtcmVzcG9uc2UiCnByb3BlcnR5IGZvciBza2lwcGluZyB0aGUgcmVz
cG9uc2Ugb2YgIlNlbmQgQm9vdCBQcm9ncmVzcyBDb2RlIiBjb21tYW5kCmZyb20gdXNlcnNwYWNl
LgoKU2lnbmVkLW9mZi1ieTogUG90aW4gTGFpIDxwb3Rpbi5sYWkucHRAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCmlu
ZGV4IDU2MzQ2ZmIzMjg3MjcuLjMzODZhOGJkMThhZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hh
ci9pcG1pL3NzaWZfYm1jLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvc3NpZl9ibWMuYwpAQCAt
MzksNiArMzksMTEgQEAKICNkZWZpbmUgU1NJRl9JUE1JX01VTFRJUEFSVF9SRUFEX1NUQVJUICAg
ICAgICAgIDB4MwogI2RlZmluZSBTU0lGX0lQTUlfTVVMVElQQVJUX1JFQURfTUlERExFICAgICAg
ICAgMHg5CiAKKyNkZWZpbmUgR0VUX05FVEZOKG5ldGZuX2x1bikgICAgICAgICAgICAgICAgICAg
ICgobmV0Zm5fbHVuID4+IDIpICYgMHhmZSkKKyNkZWZpbmUgSVBNSV9HUk9VUF9FWFRfTkVURk4g
ICAgICAgICAgICAgICAgICAgIDB4MkMKKyNkZWZpbmUgSVBNSV9TQk1SX0dST1VQICAgICAgICAg
ICAgICAgICAgICAgICAgIDB4QUUKKyNkZWZpbmUgSVBNSV9TQk1SX0JPT1RQUk9HUkVTU19DTUQg
ICAgICAgICAgICAgIDB4MDIKKwogLyoKICAqIElQTUkgMi4wIFNwZWMsIHNlY3Rpb24gMTIuNyBT
U0lGIFRpbWluZywKICAqIFJlcXVlc3QtdG8tUmVzcG9uc2UgVGltZSBpcyBUNm1heCgyNTBtcykg
LSBUMW1heCgyMG1zKSAtIDNtcyA9IDIyN21zCkBAIC0xMDIsNiArMTA3LDggQEAgc3RydWN0IHNz
aWZfYm1jX2N0eCB7CiAJc3RydWN0IHNzaWZfcGFydF9idWZmZXIgcGFydF9idWY7CiAJc3RydWN0
IGlwbWlfc3NpZl9tc2cgICAgcmVzcG9uc2U7CiAJc3RydWN0IGlwbWlfc3NpZl9tc2cgICAgcmVx
dWVzdDsKKwkvKiBGbGFnIHRvIHNraXAgcmVzcG9uc2Ugb2YgU2VuZCBCb290IFByb2dyZXNzIENv
ZGUgKi8KKwlib29sICAgICAgICAgICAgICAgICAgICBza2lwX2Jvb3Rwcm9ncmVzc19yZXNwOwog
fTsKIAogc3RhdGljIGlubGluZSBzdHJ1Y3Qgc3NpZl9ibWNfY3R4ICp0b19zc2lmX2JtYyhzdHJ1
Y3QgZmlsZSAqZmlsZSkKQEAgLTE4Nyw2ICsxOTQsMjAgQEAgc3RhdGljIHNzaXplX3Qgc3NpZl9i
bWNfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsIGNvbnN0IGNoYXIgX191c2VyICpidWYsIHNpemVf
dAogCQlyZXR1cm4gLUVJTlZBTDsKIAogCXNwaW5fbG9ja19pcnFzYXZlKCZzc2lmX2JtYy0+bG9j
aywgZmxhZ3MpOworCWlmIChzc2lmX2JtYy0+c2tpcF9ib290cHJvZ3Jlc3NfcmVzcCAmJgorCSAg
ICBHRVRfTkVURk4obXNnLnBheWxvYWRbMF0pID09IElQTUlfR1JPVVBfRVhUX05FVEZOICYmCisJ
ICAgIG1zZy5wYXlsb2FkWzFdID09IElQTUlfU0JNUl9CT09UUFJPR1JFU1NfQ01EICYmCisJICAg
IG1zZy5wYXlsb2FkWzNdID09IElQTUlfU0JNUl9HUk9VUCkgeworCQlpZiAoc3NpZl9ibWMtPnJl
c3BvbnNlX3RpbWVyX2luaXRlZCkgeworCQkJZGVsX3RpbWVyKCZzc2lmX2JtYy0+cmVzcG9uc2Vf
dGltZXIpOworCQkJc3NpZl9ibWMtPnJlc3BvbnNlX3RpbWVyX2luaXRlZCA9IGZhbHNlOworCQl9
CisJCXNzaWZfYm1jLT5idXN5ID0gZmFsc2U7CisJCW1lbXNldCgmc3NpZl9ibWMtPnJlcXVlc3Qs
IDAsIHNpemVvZihzdHJ1Y3QgaXBtaV9zc2lmX21zZykpOworCQlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZzc2lmX2JtYy0+bG9jaywgZmxhZ3MpOworCQlyZXR1cm4gY291bnQ7CisJfQorCiAJd2hp
bGUgKHNzaWZfYm1jLT5yZXNwb25zZV9pbl9wcm9ncmVzcykgewogCQlzcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZzc2lmX2JtYy0+bG9jaywgZmxhZ3MpOwogCQlpZiAoZmlsZS0+Zl9mbGFncyAmIE9f
Tk9OQkxPQ0spCkBAIC04MDYsNiArODI3LDEwIEBAIHN0YXRpYyBpbnQgc3NpZl9ibWNfcHJvYmUo
c3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKIAlpZiAoIXNzaWZfYm1jKQogCQlyZXR1cm4gLUVO
T01FTTsKIAorCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2woY2xpZW50LT5kZXYub2Zfbm9kZSwK
KwkJCQkgICJhcm0tc2Jtcixza2lwLWJvb3Rwcm9ncmVzcy1yZXNwb25zZSIpKQorCQlzc2lmX2Jt
Yy0+c2tpcF9ib290cHJvZ3Jlc3NfcmVzcCA9IHRydWU7CisKIAlzcGluX2xvY2tfaW5pdCgmc3Np
Zl9ibWMtPmxvY2spOwogCiAJaW5pdF93YWl0cXVldWVfaGVhZCgmc3NpZl9ibWMtPndhaXRfcXVl
dWUpOwotLSAKMi4zMS4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
