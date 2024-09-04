Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 359BA96C599
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Sep 2024 19:41:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1slu0p-0005V9-H8;
	Wed, 04 Sep 2024 17:41:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1slu0n-0005V2-6y
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Sep 2024 17:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gz+G1UGhMXiakvwaWhmOVyl3J132p2bHqoWHWDx2Qww=; b=k/4boCQmP3m8o1oyOBJMgOQCNI
 3K+SQFtZZfEjIYXMgEAdE39fCB6YrJM/hXADSJrkZnljkg+hY7QbqM6x69xSmSZzvj0dHb0aovJjU
 zR01Zd3ryc3+tnb5Et0QzAG/OokO+jiN8ZtMwSyaqD771R5eWUos/herW3I+OiHg/qfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gz+G1UGhMXiakvwaWhmOVyl3J132p2bHqoWHWDx2Qww=; b=I6XcVzUFuymOpwgczgGd1A3aKs
 yFF4KmoAGaPlc2+E5JX6JPwwWtQUEv3ZQWm2GhtIHFCGYfH2UKq7xvcMyOpFsNMVoZ/7n931C1/iy
 xCU23bOJHR73PD+ApeIIGrzqbpp4pljncffhnXP+xDkZW6PEJl2JwnKLe6GWhiN4ZNBA=;
Received: from smtp-21.smtpout.orange.fr ([80.12.242.21]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1slu0l-0001sA-DE for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Sep 2024 17:41:45 +0000
Received: from [192.168.1.37] ([90.11.132.44]) by smtp.orange.fr with ESMTPA
 id lu0csB5zB6mdllu0csFqg9; Wed, 04 Sep 2024 19:41:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1725471696;
 bh=Gz+G1UGhMXiakvwaWhmOVyl3J132p2bHqoWHWDx2Qww=;
 h=Message-ID:Date:MIME-Version:Subject:To:From;
 b=QBGUl/ZHhQEHLosLTmJdHDNUIqTnoLpVsG1/hPb29kyyKTiQuzOxMEIjSkW/rkNEH
 U5meYQS9qvUsZFfO6wc0+cZtbShNy/o08gMgjyZFgpl8wOZragFLylywGraCov03ei
 7ySxakdvvGhgQ93/cQJ8g9PE6AeOii24W2vtODgQjVAyqOrvo2hQSw6ya8klRQiUbe
 WKcLTbmaq/xFttFemH+HT3fIB9s8hgqDl4wWnaWlVikUyYTczajjT3Ykist6LaAqvt
 r2R8LCztfWBUy7gumMrl9Ow0z2st3D+FLgM6Q1nvzpvmahqf3sSIfKujnn7uBaa01V
 M+vPe+48hwuYA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Wed, 04 Sep 2024 19:41:36 +0200
X-ME-IP: 90.11.132.44
Message-ID: <004f59c4-7401-473f-b15f-02aa5151374b@wanadoo.fr>
Date: Wed, 4 Sep 2024 19:41:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: zhangjiao2 <zhangjiao2@cmss.chinamobile.com>
References: <20240904041213.53052-1-zhangjiao2@cmss.chinamobile.com>
Content-Language: en-US, fr-FR
In-Reply-To: <20240904041213.53052-1-zhangjiao2@cmss.chinamobile.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 04/09/2024 à 06:12, zhangjiao2 a écrit : > From: zhang
    jiao <zhangjiao2@cmss.chinamobile.com> > > Use devm_kasprintf to simplify
    code. Hi, I don't think that it is correct because __ipmi_bmc_register()
   is not a probe function ans is not called from a probe function. So it is
   really unlikely that a devm_ function is correct. 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.21 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [80.12.242.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1slu0l-0001sA-DE
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Use devm_kasprintf
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
From: Christophe JAILLET via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

TGUgMDQvMDkvMjAyNCDDoCAwNjoxMiwgemhhbmdqaWFvMiBhIMOpY3JpdMKgOgo+IEZyb206IHpo
YW5nIGppYW8gPHpoYW5namlhbzJAY21zcy5jaGluYW1vYmlsZS5jb20+Cj4gCj4gVXNlIGRldm1f
a2FzcHJpbnRmIHRvIHNpbXBsaWZ5IGNvZGUuCgpIaSwKCkkgZG9uJ3QgdGhpbmsgdGhhdCBpdCBp
cyBjb3JyZWN0IGJlY2F1c2UgX19pcG1pX2JtY19yZWdpc3RlcigpIGlzIG5vdCBhIApwcm9iZSBm
dW5jdGlvbiBhbnMgaXMgbm90IGNhbGxlZCBmcm9tIGEgcHJvYmUgZnVuY3Rpb24uIFNvIGl0IGlz
IHJlYWxseSAKdW5saWtlbHkgdGhhdCBhIGRldm1fIGZ1bmN0aW9uIGlzIGNvcnJlY3QuCgpUaGUg
a2FzcHJpbnRmKCkgeW91IGFyZSByZW1vdmluZyBpcyBiYWxhbmNlZCBieSBhIGtmcmVlKCkgaW4g
Cl9faXBtaV9ibWNfdW5yZWdpc3RlcigpLgpTbyB5b3UgcGF0Y2ggd291bGQgbGVhZCB0byBhIHBv
dGVudGlhbCBkb3VibGUtZnJlZSBpc3N1ZS4KCkNKCgo+IAo+IFNpZ25lZC1vZmYtYnk6IHpoYW5n
IGppYW8gPHpoYW5namlhbzJAY21zcy5jaGluYW1vYmlsZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyB8IDkgKystLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lw
bWlfbXNnaGFuZGxlci5jCj4gaW5kZXggZTEyYjUzMWY1YzJmLi41ZDc4YjFmZTQ5YTggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMKPiArKysgYi9kcml2
ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+IEBAIC0zMjEzLDcgKzMyMTMsNyBAQCBz
dGF0aWMgaW50IF9faXBtaV9ibWNfcmVnaXN0ZXIoc3RydWN0IGlwbWlfc21pICppbnRmLAo+ICAg
Cj4gICAJaWYgKGludGZfbnVtID09IC0xKQo+ICAgCQlpbnRmX251bSA9IGludGYtPmludGZfbnVt
Owo+IC0JaW50Zi0+bXlfZGV2X25hbWUgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgImlwbWklZCIs
IGludGZfbnVtKTsKPiArCWludGYtPm15X2Rldl9uYW1lID0gZGV2bV9rYXNwcmludGYoaW50Zi0+
c2lfZGV2LCBHRlBfS0VSTkVMLCAiaXBtaSVkIiwgaW50Zl9udW0pOwo+ICAgCWlmICghaW50Zi0+
bXlfZGV2X25hbWUpIHsKPiAgIAkJcnYgPSAtRU5PTUVNOwo+ICAgCQlkZXZfZXJyKGludGYtPnNp
X2RldiwgIlVuYWJsZSB0byBhbGxvY2F0ZSBsaW5rIGZyb20gQk1DOiAlZFxuIiwKPiBAQCAtMzIy
Niw3ICszMjI2LDcgQEAgc3RhdGljIGludCBfX2lwbWlfYm1jX3JlZ2lzdGVyKHN0cnVjdCBpcG1p
X3NtaSAqaW50ZiwKPiAgIAlpZiAocnYpIHsKPiAgIAkJZGV2X2VycihpbnRmLT5zaV9kZXYsICJV
bmFibGUgdG8gY3JlYXRlIHN5bWxpbmsgdG8gYm1jOiAlZFxuIiwKPiAgIAkJCXJ2KTsKPiAtCQln
b3RvIG91dF9mcmVlX215X2Rldl9uYW1lOwo+ICsJCWdvdG8gb3V0X3VubGluazE7Cj4gICAJfQo+
ICAgCj4gICAJaW50Zi0+Ym1jX3JlZ2lzdGVyZWQgPSB0cnVlOwo+IEBAIC0zMjM3LDExICszMjM3
LDYgQEAgc3RhdGljIGludCBfX2lwbWlfYm1jX3JlZ2lzdGVyKHN0cnVjdCBpcG1pX3NtaSAqaW50
ZiwKPiAgIAlpbnRmLT5pbl9ibWNfcmVnaXN0ZXIgPSBmYWxzZTsKPiAgIAlyZXR1cm4gcnY7Cj4g
ICAKPiAtCj4gLW91dF9mcmVlX215X2Rldl9uYW1lOgo+IC0Ja2ZyZWUoaW50Zi0+bXlfZGV2X25h
bWUpOwo+IC0JaW50Zi0+bXlfZGV2X25hbWUgPSBOVUxMOwo+IC0KPiAgIG91dF91bmxpbmsxOgo+
ICAgCXN5c2ZzX3JlbW92ZV9saW5rKCZpbnRmLT5zaV9kZXYtPmtvYmosICJibWMiKTsKPiAgIAoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
