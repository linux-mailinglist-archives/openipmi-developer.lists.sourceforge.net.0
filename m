Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0F254E599
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 17:03:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1r1t-0000i0-Nq; Thu, 16 Jun 2022 15:03:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rdunlap@infradead.org>) id 1o1r1p-0000ht-RQ
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 15:03:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eXP8JImYusYVmz1XFgz6F/idOIpZUqokxeO9uXWtnWI=; b=KYP6KnROcXtPDFAebqVXIyRejx
 +4F9w81ssf87D/WG2Rta/WVDTcwKtDAxvs6pjlMz+ADq9R34nnvmcg8sP7ubfIW7R304DiDWO57HF
 9zRM2Ww9EbEvJ+yi4SnTgjHiz9QbVd/oDMZj/zFCST7FsNi+ODdCvARpY2ZzfymUE2no=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eXP8JImYusYVmz1XFgz6F/idOIpZUqokxeO9uXWtnWI=; b=LoZrb7Rlneccu3ujpZDueZ2kvK
 7iArADwpowYxIVxav23jNvcDU/VHi5dx5hVa/U7+RkRhMpRhDNs4YA1uHiKwEIo6PH7SkHP+ztTqw
 LsC7EsQzCTym9zz6VBceonaZxCDxnc5V3C6tJ9aGLQElB3E9N/TMYRCnhYmoMdZ8KtJ4=;
Received: from desiato.infradead.org ([90.155.92.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1r1n-004FP8-6Z
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 15:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=eXP8JImYusYVmz1XFgz6F/idOIpZUqokxeO9uXWtnWI=; b=KRUEUBUyuLXtfTp3+c4njGOSw9
 vEDot6VYfqIJ01TjLkccAS9FePTHekgVapd/ZzYWPmXEXA+RSFIUCXgcE4i50W6m4fCnG86csGQyX
 2fPfw/RqUdF4HEmx4JlxDoLwTB0EWagiVnntZpQaqWknDkJxM4E1QP0tjaadRQit0B1awN3dL+OZu
 ZsZePFuAxZdy2RY5zt1kIpOlK2HQCMVQRqiaBTPCUQZRHL01dW8Ib9Xq+0BcfW1mwxgzWyFa88QqN
 FSAPYfcU9mx5op4/SWDy3jKI0BU4lwAqlSxpSWdiQOCvm8mzCemKd14GlH1PVzlSGikdp93WSV3Ok
 ZbnXZCJA==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o1r0x-008RS8-4P; Thu, 16 Jun 2022 15:02:32 +0000
Message-ID: <fb8e7e35-7f26-15bc-9fbb-2949fc80a18b@infradead.org>
Date: Thu, 16 Jun 2022 08:02:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard
 <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-2-quan@os.amperecomputing.com>
 <8b7841a9-9313-b1d5-8a80-a65cfa8e7b4d@infradead.org>
 <74f94464-a095-f539-746a-853b8f1d52ca@os.amperecomputing.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <74f94464-a095-f539-746a-853b8f1d52ca@os.amperecomputing.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/16/22 00:25, Quan Nguyen wrote: > On 15/06/2022 23:06, 
 Randy Dunlap wrote: >> >> >> On 6/15/22 02:02, Quan Nguyen wrote: >>> diff
 --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig >>> [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.92.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1r1n-004FP8-6Z
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiA2LzE2LzIyIDAwOjI1LCBRdWFuIE5ndXllbiB3cm90ZToKPiBPbiAxNS8wNi8yMDIyIDIz
OjA2LCBSYW5keSBEdW5sYXAgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDYvMTUvMjIgMDI6MDIsIFF1YW4g
Tmd1eWVuIHdyb3RlOgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL0tjb25maWcg
Yi9kcml2ZXJzL2NoYXIvaXBtaS9LY29uZmlnCj4+PiBpbmRleCBiMDYxZTZiNTEzZWQuLjE4YTg5
MDkzZDY0ZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL0tjb25maWcKPj4+ICsr
KyBiL2RyaXZlcnMvY2hhci9pcG1pL0tjb25maWcKPj4+IEBAIC0xNjksNiArMTY5LDE3IEBAIGNv
bmZpZyBBU1BFRURfQlRfSVBNSV9CTUMKPj4+IMKgwqDCoMKgwqDCoMKgIGZvdW5kIG9uIEFzcGVl
ZCBTT0NzIChBU1QyNDAwIGFuZCBBU1QyNTAwKS4gVGhlIGRyaXZlcgo+Pj4gwqDCoMKgwqDCoMKg
wqAgaW1wbGVtZW50cyB0aGUgQk1DIHNpZGUgb2YgdGhlIEJUIGludGVyZmFjZS4KPj4+IMKgICtj
b25maWcgU1NJRl9JUE1JX0JNQwo+Pj4gK8KgwqDCoCB0cmlzdGF0ZSAiU1NJRiBJUE1JIEJNQyBk
cml2ZXIiCj4+PiArwqDCoMKgIHNlbGVjdCBJMkMKPj4KPj4gTm8uIFRoYXQgc2hvdWxkIGJlOgo+
PiDCoMKgwqDCoGRlcGVuZHMgb24gSTJDCj4+Cj4+IFdlIGRvbid0IHNlbGVjdCBhbiBlbnRpcmUg
c3Vic3lzdGVtIGp1c3QgdG8gc2F0aXNmeSBvbmUgZHJpdmVyLgo+Pgo+Pj4gK8KgwqDCoCBzZWxl
Y3QgSTJDX1NMQVZFCj4+PiArwqDCoMKgIGhlbHAKPj4+ICvCoMKgwqDCoMKgIFRoaXMgZW5hYmxl
cyB0aGUgSVBNSSBTTUJ1cyBzeXN0ZW0gaW50ZXJmYWNlIChTU0lGKSBhdCB0aGUKPj4+ICvCoMKg
wqDCoMKgIG1hbmFnZW1lbnQgKEJNQykgc2lkZS4KPj4+ICsKPj4+ICvCoMKgwqDCoMKgIFRoZSBk
cml2ZXIgaW1wbGVtZW50cyB0aGUgQk1DIHNpZGUgb2YgdGhlIFNNQnVzIHN5c3RlbQo+Pj4gK8Kg
wqDCoMKgwqAgaW50ZXJmYWNlIChTU0lGKS4KPj4+ICsKPj4KPj4gVGhhbmtzLgo+IAo+IFRoYW5r
cyBSYW5keSwKPiBpdCBzaG91bGQgYmUgY2hhbmdlIHRvICJkZXBlbmRzIG9uIEkyQyAmJiBJMkNf
U0xBVkUiCgpFaXRoZXIgd2F5IGlzIE9LIGZvciBJMkNfU0xBVkUgQUZBSUsuCgp0aGFua3MuCgot
LSAKflJhbmR5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
