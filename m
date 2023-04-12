Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 323966DFAFB
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Apr 2023 18:14:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pmd7L-0007Uh-Cr;
	Wed, 12 Apr 2023 16:14:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pmd7F-0007UW-Pr
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 16:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HZneK8PoH8isCz72dUgKTT1zJR4uXx+EipfUvONGMMU=; b=AZSZ2ey/kte5aPMpDaDAjjm3w3
 Q3PMv/SqiYFkjo6aKBVM9hU4/gSNcip5RUBGgWjutGUvSLT95t3gtG5BilhqJaJ5xHCZ/FPUVG5ex
 mNpnNUazs3XXzsPpDC+viOKzK2bcjVun7MLWpWS9vz5p9isCAJoHIKT5EQwV5daY7Wtk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HZneK8PoH8isCz72dUgKTT1zJR4uXx+EipfUvONGMMU=; b=clgDpW9G/F3kkyZZ9Ll9kjK3I3
 KNL57ZOkW59a4rVYXshRSkAoe1LjCcNOy7GppijcGRk0bvHSp3YSn1eS/bRzJK30HVwHirAhCs+Ah
 mW7eI7g/EoiAUWNsfDofduWMGmlLG8T8gNXY3yUoFvMRWQmbNioLCLyQK9RdVgMFwTpc=;
Received: from mail-oa1-f42.google.com ([209.85.160.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pmd7B-005RWj-IB for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 16:14:37 +0000
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-1842cddca49so14515417fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Apr 2023 09:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681316067; x=1683908067;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=HZneK8PoH8isCz72dUgKTT1zJR4uXx+EipfUvONGMMU=;
 b=ZyX0uXEOqOvKrMl4DI/tnvZbX1aEQUEOtrrLJNHuJmS7PHRhG0KSf2m403faqN668o
 xZQW/8rBHlG4cvUfeP8G9plqJhKWeHKlbZzmS6mOpX3g6XP5I2jwgqE5XwHhI9Gfj15x
 arDR5If7WmShGGj3o0fK8Riuiw2PFyC21LnWzNDUhnf0rtYGhma17f3dLcuiDDybOgg6
 nE3Ukqeguf81GNBr4wGUZYfkP0Sv/DIP1fdFIb1gqYpYj6APLnZ6lT+3Mrtg1BPGI0S3
 yiZzHWCjHcT921X2ZqzlnI+YUrwGVvTwPLmkYCpHlM5pmoC4h8ICXp22Uwozg/1reu5S
 HPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681316067; x=1683908067;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HZneK8PoH8isCz72dUgKTT1zJR4uXx+EipfUvONGMMU=;
 b=MMR0+Lk0JCNomroeSXtVZZMlFpkViPgj3IgsOswSWEPHefWr8qMojKT9tLMrkVXo8Y
 HEyy9SzJ2gKjAfzclNfH38wKAPsUXsfe5jgtc7bqBN1YtdH9NALc9k/pfsltfs05hEcE
 CZI5rXTfJZq52H5+6qXLpBhTwPCRuwiFt2WVx8My6+023QfGT6tYFoKy9FsdF9nav/xX
 KgX4atYU4goCW6NcZrOoVDVaDk6+aoGMhpJQ4BbENNOlPjBgsiUac57xR3n+hkzAeq/H
 pduP+qKYlPyzr532CeJM8cM+WZLXpZEzFrJlkL1km2r01bWLpQxjBxC1jBZi8Yga/psB
 TqHQ==
X-Gm-Message-State: AAQBX9fUUorGjWEgLRAF2iT5zVdMAPLdUkSi9/xGGiqB3300de12gtGu
 0t6PTfUjrMsn+O3SzvK8biFhCWjzHw==
X-Google-Smtp-Source: AKy350ZQW7y6xjs35Su/gyNRwU0nmTL/tPzfpYQT86yDjI3Jj++p/pnBJ/pQprvcILk2ysw05pV3qQ==
X-Received: by 2002:a05:6871:b0f:b0:17b:1a4f:adfe with SMTP id
 fq15-20020a0568710b0f00b0017b1a4fadfemr11614487oab.10.1681316067448; 
 Wed, 12 Apr 2023 09:14:27 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.84])
 by smtp.gmail.com with ESMTPSA id
 yg21-20020a05687c009500b0016a37572d17sm6425216oab.2.2023.04.12.09.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 09:14:27 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:6dde:1386:156e:63])
 by serve.minyard.net (Postfix) with ESMTPSA id 380B8180044;
 Wed, 12 Apr 2023 16:14:26 +0000 (UTC)
Date: Wed, 12 Apr 2023 11:14:25 -0500
From: Corey Minyard <minyard@acm.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <ZDbY4SihVOuxhHxv@minyard.net>
References: <20221230124431.202474-1-u.kleine-koenig@pengutronix.de>
 <20230412150721.7qk5qzedtflmseh6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230412150721.7qk5qzedtflmseh6@pengutronix.de>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Apr 12, 2023 at 05:07:21PM +0200, Uwe Kleine-König
    wrote: > On Fri, Dec 30, 2022 at 01:44:31PM +0100, Uwe Kleine-König wrote:
    > > For both variants (platform and i2c driver) after a successf [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.42 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pmd7B-005RWj-IB
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Drop if blocks with
 always false condition
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBBcHIgMTIsIDIwMjMgYXQgMDU6MDc6MjFQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gRnJpLCBEZWMgMzAsIDIwMjIgYXQgMDE6NDQ6MzFQTSArMDEwMCwgVXdl
IEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiBGb3IgYm90aCB2YXJpYW50cyAocGxhdGZvcm0gYW5k
IGkyYyBkcml2ZXIpIGFmdGVyIGEgc3VjY2Vzc2Z1bCBiaW5kCj4gPiAoaS5lLiAucHJvYmUgY29t
cGxldGVkIHdpdGhvdXQgZXJyb3IpIGRyaXZlciBkYXRhIGlzIHNldCB0byBhIG5vbi1OVUxMCj4g
PiB2YWx1ZS4KPiA+IAo+ID4gU28gdGhlIHJldHVybiB2YWx1ZSBvZiBpMmNfZ2V0X2NsaWVudGRh
dGEgYW5kIGRldl9nZXRfZHJ2ZGF0YQo+ID4gcmVzcGVjdGl2ZWx5IGFyZSBub3QgTlVMTCBhbmQg
c28gdGhlIGlmIGJsb2NrcyBhcmUgbmV2ZXIgZXhlY3V0ZWQuIChBbmQKPiA+IGlmIHlvdSBmZWFy
IHRoZXkgbWlnaHQsIHRoZXkgc2hvdWxkbid0IHJldHVybiBzaWxlbnRseSBhbmQgeWllbGQgYQo+
ID4gcmVzb3VyY2UgbGVhay4pCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gCj4gVGhpcyBwYXRjaCB3YWl0
cyBmb3IgZmVlZGJhY2sgbm93IGZvciA+IDMgbW9udGguIElzIHRoaXMgc3RpbGwgb24KPiBzb21l
b25lJ3MgdG9kbyBsaXN0PwoKSSBhcG9sb2dpc2UsIHRoaXMgZ290IGxvc3QuICBJdCdzIHF1ZXVl
ZCBmb3IgbmV4dCBtZXJnZSB3aW5kb3cuCgpUaGFuayB5b3UsCgotY29yZXkKCj4gCj4gQmVzdCBy
ZWdhcmRzCj4gVXdlCj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYu
YyB8IDYgLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfc3NpZi5jCj4gPiBpbmRleCA0YmZkMWUzMDY2MTYuLmEwMDkwZWE1NGU0OCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4gPiArKysgYi9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NzaWYuYwo+ID4gQEAgLTEyODYsOSArMTI4Niw2IEBAIHN0
YXRpYyB2b2lkIHNzaWZfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gPiAgCXN0
cnVjdCBzc2lmX2luZm8gKnNzaWZfaW5mbyA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwo+
ID4gIAlzdHJ1Y3Qgc3NpZl9hZGRyX2luZm8gKmFkZHJfaW5mbzsKPiA+ICAKPiA+IC0JaWYgKCFz
c2lmX2luZm8pCj4gPiAtCQlyZXR1cm47Cj4gPiAtCj4gPiAgCS8qCj4gPiAgCSAqIEFmdGVyIHRo
aXMgcG9pbnQsIHdlIHdvbid0IGRlbGl2ZXIgYW55dGhpbmcgYXN5Y2hyb25vdXNseQo+ID4gIAkg
KiB0byB0aGUgbWVzc2FnZSBoYW5kbGVyLiAgV2UgY2FuIHVucmVnaXN0ZXIgb3Vyc2VsZi4KPiA+
IEBAIC0yMDc0LDkgKzIwNzEsNiBAQCBzdGF0aWMgaW50IHNzaWZfcGxhdGZvcm1fcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmRldikKPiA+ICB7Cj4gPiAgCXN0cnVjdCBzc2lmX2FkZHJf
aW5mbyAqYWRkcl9pbmZvID0gZGV2X2dldF9kcnZkYXRhKCZkZXYtPmRldik7Cj4gPiAgCj4gPiAt
CWlmICghYWRkcl9pbmZvKQo+ID4gLQkJcmV0dXJuIDA7Cj4gPiAtCj4gPiAgCW11dGV4X2xvY2so
JnNzaWZfaW5mb3NfbXV0ZXgpOwo+ID4gIAlsaXN0X2RlbCgmYWRkcl9pbmZvLT5saW5rKTsKPiA+
ICAJa2ZyZWUoYWRkcl9pbmZvKTsKPiA+IC0tIAo+ID4gMi4zOC4xCj4gPiAKPiA+IAo+ID4gCj4g
Cj4gLS0gCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdl
IEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMg
ICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1k
ZXZlbG9wZXIK
