Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C6AC24C5
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 May 2025 16:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=La0QM1rBgEyFQ4uR+rqGX/LyhzeopPiLX/Fh0x4ZKKE=; b=SOXSaBedBTECdZVni3hBlyoRUx
	SIF9PPXeB/c9OJTuP/6ETE5wfYjpT4+Bo2beN7OgaQOgqVL7G4phHmYtxCvbqEXlmMhr6vpsl/Vvu
	W7RcieqAfr6YuOhDjsawLVGpQRgY8AmIVfvLPhq3dIMEdC35DL1ClBHy4go8U49cLSGU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uIT8F-0005Kt-Uy;
	Fri, 23 May 2025 14:12:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chenhuacai@kernel.org>) id 1uIMoK-0007vG-Fu
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9yxyUE/ISoLBLBClVmEWjOJVfWFVLke7FhP+XiIyuxA=; b=eKv5mjsGde4zJEFmndBVYYxQbd
 epxOSuQVm688NTApmjzuJUHzfF+WKIcwtouKgZVN+pmEjaLZCmbOzUG2yZBZ2j4XanClGrJ9ukjMm
 rehBy+3nhWolYV2ztDg2oJcvSqWWFTrIsbuz37RxJHegvdz/R4/anFrNEV4uuSSpG6aM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9yxyUE/ISoLBLBClVmEWjOJVfWFVLke7FhP+XiIyuxA=; b=GHbQijLNeJvOvlbUtTcuSvy5u9
 PmbAIMEJsq+J/721I31J75pKLLMkR3K7gKHidJbS6ben0+2GFlCpG0o0S7c3baPDJMG7ibmg9qOsu
 bhJKyAiEM0u+nHpct0fDA1JC1osj/p1ySmMpbmC/BpJ1NnpOLrYVI8tfeD++R/Qq015o=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uIMoJ-0003TW-NT for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:27:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0CDE2A4F0BA
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 07:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADA75C4CEED
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747985228;
 bh=Z/l7ToxGpCTkXxBI0uuJX+Lg2l3QGNfUGbJ+bY5ub5E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mDjJHWW+xYJpD+KazjOR8KLhe3vj9Pa2bTGiREI4dfCEXxaGAdwjDrDB9yVQHu/fy
 GI9yVk2RDM+QDBWKioX5/AIAcVVCJEJ32mukhhHxzN81aj/aHkiWRKNgOE/MShdgIH
 li4RN3T478sEIe6+W0wsELRNWOwQzeKffNiASl5+/xG24lE5H3l8EtmsqfiKjNpg3E
 2l/uiIVP/BmV7Q1GLse6nldx3yLInK3s9khByW/L4rTM0gcDPdqkAJeK6TwmdQ2nmP
 pE8eAL93WNXfFeOmfgehGsSFdo8lnJw5OivIWOBfSgclu24XfWnoO+sRiFJWHBQHwd
 E2AMc9hqr7S4g==
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-6016d401501so12302232a12.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 00:27:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXymSn6PJvbZw2noL7aJJZmjOcdgTbktaJqbgQXSqgNEV+g84H/3hBd59Gt+gR0lVQOqcXhBFqSmmmlDXEKvmO/9JY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YydyVxCubIlgiHL2ZzbUN21knEUSOXZF8+a/cy1SVl5+CaZOJZJ
 I3eR66dZ6lN8suNOsQz8iPl1v8j2+7cfPvKh6iOsRmWjjlV7zZp2kpAAJC94H1awGTOpU9R8UbP
 uGA+qIzL82BOQT+LxgxSP2avv4IBMFY0=
X-Google-Smtp-Source: AGHT+IHQnuY9HROjlnDm7vS12apb64c4BxIGvliJw2D2sqQ8ZPiGfxgitA9Lq7A+l3j0hMKlJwInferOzBY88kS0kxo=
X-Received: by 2002:a05:6402:50d4:b0:5fb:ad3c:cee9 with SMTP id
 4fb4d7f45d1cf-602916118a7mr1816329a12.28.1747985227277; Fri, 23 May 2025
 00:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
 <eff0c02e30118c45463f4b6488c895bf3ec9edb9.1747276047.git.zhoubinbin@loongson.cn>
In-Reply-To: <eff0c02e30118c45463f4b6488c895bf3ec9edb9.1747276047.git.zhoubinbin@loongson.cn>
Date: Fri, 23 May 2025 15:26:55 +0800
X-Gmail-Original-Message-ID: <CAAhV-H611AP6HM+5oFw_W1AufnStixDAL7zbYaw0j-6kbNLxkg@mail.gmail.com>
X-Gm-Features: AX0GCFt3blzFRD6FpQd1Ke-1eOOtRrgqGQ-aF4gGbdtAybKC1uAYxjdPiA_kzI8
Message-ID: <CAAhV-H611AP6HM+5oFw_W1AufnStixDAL7zbYaw0j-6kbNLxkg@mail.gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>
X-Spam-Score: -3.9 (---)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Binbin, On Thu, May 15,
 2025 at 10:32 AM Binbin Zhou <zhoubinbin@loongson.cn>
 wrote: > > Since the display is a sub-function of the Loongson-2K BMC, when
 the > BMC reset, the entire BMC PCIe is disconnected, [...] 
 Content analysis details:   (-3.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uIMoJ-0003TW-NT
X-Mailman-Approved-At: Fri, 23 May 2025 14:12:05 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 3/3] mfd: ls2kbmc: Add
 Loongson-2K BMC reset function support
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
From: Huacai Chen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Huacai Chen <chenhuacai@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Lee Jones <lee@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksIEJpbmJpbiwKCk9uIFRodSwgTWF5IDE1LCAyMDI1IGF0IDEwOjMy4oCvQU0gQmluYmluIFpo
b3UgPHpob3ViaW5iaW5AbG9vbmdzb24uY24+IHdyb3RlOgo+Cj4gU2luY2UgdGhlIGRpc3BsYXkg
aXMgYSBzdWItZnVuY3Rpb24gb2YgdGhlIExvb25nc29uLTJLIEJNQywgd2hlbiB0aGUKPiBCTUMg
cmVzZXQsIHRoZSBlbnRpcmUgQk1DIFBDSWUgaXMgZGlzY29ubmVjdGVkLCBpbmNsdWRpbmcgdGhl
IGRpc3BsYXkKPiB3aGljaCBpcyBpbnRlcnJ1cHRlZC4KPgo+IE5vdCBvbmx5IGRvIHlvdSBuZWVk
IHRvIHNhdmUvcmVzdG9yZSB0aGUgcmVsZXZhbnQgUENJZSByZWdpc3RlcnMKPiB0aHJvdWdob3V0
IHRoZSByZXNldCBwcm9jZXNzLCBidXQgeW91IGFsc28gbmVlZCB0byByZS1wdXNoIHRoZSBkaXNw
bGF5Cj4gdG8gdGhlIG1vbml0b3IgYXQgdGhlIGVuZC4KPgo+IENvLWRldmVsb3BlZC1ieTogQ2hv
bmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+IFNpZ25lZC1vZmYtYnk6IENob25nIFFp
YW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5jbj4KPiBTaWduZWQtb2ZmLWJ5OiBCaW5iaW4gWmhvdSA8
emhvdWJpbmJpbkBsb29uZ3Nvbi5jbj4KPiAtLS0KPiAgZHJpdmVycy9tZmQvbHMya2JtYy1tZmQu
YyB8IDI0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMjQyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9s
czJrYm1jLW1mZC5jIGIvZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYwo+IGluZGV4IGIzMDlmNjEz
MmMyNC4uNGQzNWExM2IzZGE1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL2xzMmtibWMtbWZk
LmMKPiArKysgYi9kcml2ZXJzL21mZC9sczJrYm1jLW1mZC5jCj4gQEAgLTksOCArOSwxMSBAQAo+
ICAgKi8KPgo+ICAjaW5jbHVkZSA8bGludXgvYXBlcnR1cmUuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2RlbGF5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9lcnJuby5oPgo+ICAjaW5jbHVkZSA8bGludXgv
aW5pdC5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9r
YmRfa2Vybi5oPgo+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9tZmQvY29yZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gQEAgLTE4LDYgKzIx
LDggQEAKPiAgI2luY2x1ZGUgPGxpbnV4L3BjaV9pZHMuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3Bs
YXRmb3JtX2RhdGEvc2ltcGxlZmIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc3RvcF9tYWNoaW5lLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC92dF9rZXJuLmg+Cj4KPiAgI2RlZmluZSBMUzJLX0RJU1BMQVlfUkVTX1NUQVJUIChTWl8xNk0g
KyBTWl8yTSkKPiAgI2RlZmluZSBMUzJLX0lQTUlfUkVTX1NJWkUgICAgIDB4MWMKPiBAQCAtMjcs
NiArMzIsOSBAQAo+ICAjZGVmaW5lIExTMktfSVBNSTNfUkVTX1NUQVJUICAgKExTMktfSVBNSTJf
UkVTX1NUQVJUICsgTFMyS19JUE1JX1JFU19TSVpFKQo+ICAjZGVmaW5lIExTMktfSVBNSTRfUkVT
X1NUQVJUICAgKExTMktfSVBNSTNfUkVTX1NUQVJUICsgTFMyS19JUE1JX1JFU19TSVpFKQo+Cj4g
KyNkZWZpbmUgTFMyS19CTUNfUkVTRVRfREVMQVkgICAoNjAgKiBIWikKPiArI2RlZmluZSBMUzJL
X0JNQ19SRVNFVF9XQUlUICAgICgxMCAqIEhaKQo+ICsKPiAgc3RhdGljIHN0cnVjdCByZXNvdXJj
ZSBsczJrX2Rpc3BsYXlfcmVzb3VyY2VzW10gPSB7Cj4gICAgICAgICBERUZJTkVfUkVTX01FTV9O
QU1FRChMUzJLX0RJU1BMQVlfUkVTX1NUQVJULCBTWl80TSwgInNpbXBsZWRybS1yZXMiKSwKPiAg
fTsKPiBAQCAtNjAsNiArNjgsMjI3IEBAIHN0YXRpYyBzdHJ1Y3QgbWZkX2NlbGwgbHMya19ibWNf
Y2VsbHNbXSA9IHsKPiAgICAgICAgIE1GRF9DRUxMX1JFUygibHMyay1pcG1pLXNpIiwgbHMya19p
cG1pNF9yZXNvdXJjZXMpLAo+ICB9Owo+Cj4gK3N0YXRpYyBjb25zdCB1MzIgaW5kZXhbXSA9IHsg
MHg0LCAweDEwLCAweDE0LCAweDE4LCAweDFjLCAweDIwLCAweDI0LAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgMHgzMCwgMHgzYywgMHg1NCwgMHg1OCwgMHg3OCwgMHg3YywgMHg4MCB9
Owo+ICtzdGF0aWMgY29uc3QgdTMyIGNpbmRleFtdID0geyAweDQsIDB4MTAsIDB4M2MgfTsKPiAr
Cj4gK3N0cnVjdCBsczJrX2JtY19wY2lfZGF0YSB7Cj4gKyAgICAgICB1MzIgZDgwYzsKPiArICAg
ICAgIHUzMiBkNzFjOwo+ICsgICAgICAgdTMyIGRhdGFbMTRdOwo+ICsgICAgICAgdTMyIGNkYXRh
WzNdOwo+ICt9Owo+ICsKPiArc3RydWN0IGxzMmtfYm1jX3BkYXRhIHsKPiArICAgICAgIHN0cnVj
dCBkZXZpY2UgKmRldjsKPiArICAgICAgIHN0cnVjdCB3b3JrX3N0cnVjdCByZXNldF93b3JrOwo+
ICsgICAgICAgdW5zaWduZWQgbG9uZyByZXNldF90aW1lOwo+ICsgICAgICAgc3RydWN0IGxzMmtf
Ym1jX3BjaV9kYXRhIHBjaV9kYXRhOwo+ICt9Owo+ICsKPiArc3RhdGljIGJvb2wgbHMya19ibWNf
YmFyMF9hZGRyX2lzX3NldChzdHJ1Y3QgcGNpX2RldiAqcHBkZXYpCj4gK3sKPiArICAgICAgIHUz
MiBhZGRyOwo+ICsKPiArICAgICAgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwcGRldiwgUENJX0JB
U0VfQUREUkVTU18wLCAmYWRkcik7Cj4gKyAgICAgICBhZGRyICY9IFBDSV9CQVNFX0FERFJFU1Nf
TUVNX01BU0s7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGFkZHIgPyB0cnVlIDogZmFsc2U7Cj4gK30K
PiArCj4gK3N0YXRpYyBib29sIGxzMmtfYm1jX2NoZWNrX3BjaWVfY29ubmVjdGVkKHN0cnVjdCBw
Y2lfZGV2ICpwYXJlbnQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGxzMmtfYm1jX3BkYXRhICpwcml2KQo+ICt7Cj4gKyAgICAgICB2b2lkIF9faW9t
ZW0gKm1taW87Cj4gKyAgICAgICBpbnQgc3RzLCByZXQ7Cj4gKwo+ICsgICAgICAgbW1pbyA9IHBj
aV9pb21hcChwYXJlbnQsIDAsIDB4MTAwKTsKPiArICAgICAgIGlmICghbW1pbykKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ICsKPiArICAgICAgIHdyaXRlbChyZWFkbChtbWlvKSB8
IDB4OCwgbW1pbyk7Cj4gKwo+ICsgICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0X2F0b21p
YyhtbWlvICsgMHhjLCBzdHMsIChzdHMgJiAweDExKSA9PSAweDExLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwLCAxMDAwMDAwKTsKPiArICAgICAgIGlmIChy
ZXQpIHsKPiArICAgICAgICAgICAgICAgcGNpX2lvdW5tYXAocGFyZW50LCBtbWlvKTsKPiArICAg
ICAgICAgICAgICAgZGV2X2Vycihwcml2LT5kZXYsICJQQ0lFIHRyYWluIGZhaWxlZCBzdGF0dXM9
MHgleFxuIiwgc3RzKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ICsgICAgICAg
fQo+ICsKPiArICAgICAgIHBjaV9pb3VubWFwKHBhcmVudCwgbW1pbyk7Cj4gKyAgICAgICByZXR1
cm4gdHJ1ZTsKPiArfQo+ICsKPiArc3RhdGljIGludCBsczJrX2JtY19yZWNvdmVyX3BjaV9kYXRh
KHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHN0cnVjdCBsczJrX2JtY19wZGF0YSAqcHJpdiA9
IGRhdGE7Cj4gKyAgICAgICBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYocHJpdi0+
ZGV2KTsKPiArICAgICAgIHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7
Cj4gKyAgICAgICBib29sIHJlYWR5LCBkaXJ0eTsKPiArICAgICAgIHUzMiBpOwo+ICsKPiArICAg
ICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQocGFyZW50LCBQQ0lfQkFTRV9BRERSRVNTXzIsIDAp
Owo+ICsgICAgICAgcGNpX3dyaXRlX2NvbmZpZ19kd29yZChwYXJlbnQsIFBDSV9CQVNFX0FERFJF
U1NfMywgMCk7Cj4gKyAgICAgICBwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBhcmVudCwgUENJX0JB
U0VfQUREUkVTU180LCAwKTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAyMDAwOyBpID4gMCA7IGkt
LSkgewo+ICsgICAgICAgICAgICAgICBkaXJ0eSA9IGxzMmtfYm1jX2JhcjBfYWRkcl9pc19zZXQo
cGFyZW50KTsKPiArICAgICAgICAgICAgICAgaWYgKCFkaXJ0eSkKPiArICAgICAgICAgICAgICAg
ICAgICAgICBicmVhazsKPiArICAgICAgICAgICAgICAgbWRlbGF5KDEpOwo+ICsgICAgICAgfTsK
PiArCj4gKyAgICAgICBpZiAoaSA9PSAwKQo+ICsgICAgICAgICAgICAgICBkZXZfd2Fybihwcml2
LT5kZXYsICJUaGUgUENJIEJhciBpcyBub3QgY2xlYXJlZC5cbiIpOwo+ICsKPiArICAgICAgIGZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGluZGV4KTsgaSsrKQo+ICsgICAgICAgICAgICAgICBw
Y2lfd3JpdGVfY29uZmlnX2R3b3JkKHBhcmVudCwgaW5kZXhbaV0sIHByaXYtPnBjaV9kYXRhLmRh
dGFbaV0pOwo+ICsKPiArICAgICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQocGFyZW50LCAweDgw
YywgcHJpdi0+cGNpX2RhdGEuZDgwYyk7Cj4gKyAgICAgICBwY2lfd3JpdGVfY29uZmlnX2R3b3Jk
KHBhcmVudCwgMHg3MWMsIHByaXYtPnBjaV9kYXRhLmQ3MWMpOwo+ICsKPiArICAgICAgIC8qIENo
ZWNrIGlmIHRoZSBwY2llIGlzIGNvbm5lY3RlZCAqLwo+ICsgICAgICAgcmVhZHkgPSBsczJrX2Jt
Y19jaGVja19wY2llX2Nvbm5lY3RlZChwYXJlbnQsIHByaXYpOwo+ICsgICAgICAgaWYgKCFyZWFk
eSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJlYWR5Owo+ICsKPiArICAgICAgIGRldl9kYmco
cHJpdi0+ZGV2LCAiVGhlIFBDSUUgcmVjb3ZlcmVkIGRvbmUuXG4iKTsKPiArCj4gKyAgICAgICAv
KiBXYWl0aW5nIGZvciB1LWJvb3QgZGRyIGNvbmZpZyByZWFkeSAqLwo+ICsgICAgICAgbWRlbGF5
KGppZmZpZXNfdG9fbXNlY3MoTFMyS19CTUNfUkVTRVRfV0FJVCkpOwo+ICsgICAgICAgcmVhZHkg
PSBsczJrX2JtY19iYXIwX2FkZHJfaXNfc2V0KHBhcmVudCk7Cj4gKyAgICAgICBpZiAoIXJlYWR5
KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmVhZHk7Cj4gKwo+ICsgICAgICAgZm9yIChpID0g
MDsgaSA8IEFSUkFZX1NJWkUoY2luZGV4KTsgaSsrKQo+ICsgICAgICAgICAgICAgICBwY2lfd3Jp
dGVfY29uZmlnX2R3b3JkKHBkZXYsIGNpbmRleFtpXSwgcHJpdi0+cGNpX2RhdGEuY2RhdGFbaV0p
Owo+ICsKPiArICAgICAgIHJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBsczJrX2Jt
Y19ldmVudHNfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3QgbHMya19ibWNfcGRhdGEgKnByaXYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IGxzMmtf
Ym1jX3BkYXRhLCByZXNldF93b3JrKTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogVGhl
IHBjaWUgaXMgbG9zdCB3aGVuIHRoZSBCTUMgcmVzZXRzLAo+ICsgICAgICAgICogYXQgd2hpY2gg
cG9pbnQgYWNjZXNzIHRvIHRoZSBwY2llIGZyb20gb3RoZXIgQ1BVcwo+ICsgICAgICAgICogaXMg
c3VzcGVuZGVkIHRvIHByZXZlbnQgYSBjcmFzaC4KPiArICAgICAgICAqLwo+ICsgICAgICAgc3Rv
cF9tYWNoaW5lKGxzMmtfYm1jX3JlY292ZXJfcGNpX2RhdGEsIHByaXYsIE5VTEwpOwo+ICsKPiAr
I2lmZGVmIENPTkZJR19WVAo+ICsgICAgICAgLyogUmUtcHVzaCB0aGUgZGlzcGxheSBkdWUgdG8g
cHJldmlvdXMgcGNpZSBsb3NzLiAqLwo+ICsgICAgICAgc2V0X2NvbnNvbGUodnRfbW92ZV90b19j
b25zb2xlKE1BWF9OUl9DT05TT0xFUyAtIDEsIDEpKTsKPiArI2VuZGlmCj4gKwo+ICsgICAgICAg
ZGV2X2luZm8ocHJpdi0+ZGV2LCAiTG9vbmdzb24tMksgQk1DIHJlY292ZXJlZCBkb25lLlxuIik7
Cj4gK30KPiArCj4gK3N0YXRpYyBpcnFyZXR1cm5fdCBsczJrX2JtY19pbnRlcnJ1cHQoaW50IGly
cSwgdm9pZCAqYXJnKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgbHMya19ibWNfcGRhdGEgKnByaXYg
PSBhcmc7Cj4gKwo+ICsgICAgICAgaWYgKHN5c3RlbV9zdGF0ZSAhPSBTWVNURU1fUlVOTklORykK
PiArICAgICAgICAgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+ICsKPiArICAgICAgIC8qIFNr
aXAgaW50ZXJydXB0IGluIExTMktfQk1DX1JFU0VUX0RFTEFZICovCj4gKyAgICAgICBpZiAodGlt
ZV9hZnRlcihqaWZmaWVzLCBwcml2LT5yZXNldF90aW1lICsgTFMyS19CTUNfUkVTRVRfREVMQVkp
KQo+ICsgICAgICAgICAgICAgICBzY2hlZHVsZV93b3JrKCZwcml2LT5yZXNldF93b3JrKTsKPiAr
Cj4gKyAgICAgICBwcml2LT5yZXNldF90aW1lID0gamlmZmllczsKPiArCj4gKyAgICAgICByZXR1
cm4gSVJRX0hBTkRMRUQ7Cj4gK30KPiArCj4gKyNkZWZpbmUgQk1DX1JFU0VUX0dQSU8gICAgICAg
ICAgICAgICAgIDE0Cj4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19SRUdfQkFTRSAgICAgICAgIDB4
MWZlMDA1MDAKPiArI2RlZmluZSBMT09OR1NPTl9HUElPX1JFR19TSVpFICAgICAgICAgMHgxOAo+
ICsjZGVmaW5lIExPT05HU09OX0dQSU9fT0VOICAgICAgICAgICAgICAweDAKPiArI2RlZmluZSBM
T09OR1NPTl9HUElPX0ZVTkMgICAgICAgICAgICAgMHg0Cj4gKyNkZWZpbmUgTE9PTkdTT05fR1BJ
T19JTlRQT0wgICAgICAgICAgIDB4MTAKPiArI2RlZmluZSBMT09OR1NPTl9HUElPX0lOVEVOICAg
ICAgICAgICAgMHgxNAo+ICsKPiArLyogVGhlIGdwaW8gaW50ZXJydXB0IGlzIGEgd2F0Y2hkb2cg
aW50ZXJydXB0IHRoYXQgaXMgdHJpZ2dlcmVkIHdoZW4gdGhlIEJNQyByZXNldHMuICovCj4gK3N0
YXRpYyBpbnQgbHMya19ibWNfZ3Bpb19yZXNldF9oYW5kbGVyKHN0cnVjdCBsczJrX2JtY19wZGF0
YSAqcHJpdikKPiArewo+ICsgICAgICAgaW50IGdzaSA9IDE2ICsgKEJNQ19SRVNFVF9HUElPICYg
Nyk7Cj4gKyAgICAgICB2b2lkIF9faW9tZW0gKmdwaW9fYmFzZTsKPiArICAgICAgIGludCBpcnEs
IHJldCA9IDA7Cj4gKwo+ICsgICAgICAgLyogU2luY2UgTG9vbmdzb24tM0EgaGFyZHdhcmUgZG9l
cyBub3Qgc3VwcG9ydCBHUElPIGludGVycnVwdCBjYXNjYWRlLApMb29uZ3Nvbi0zQSBoZXJlIHNo
b3VsZCBiZSBMb29uZ3Nvbi0zIG9yIExvb25nc29uLgoKPiArICAgICAgICAqIGNoaXAtPmdwaW9f
dG9faXJxKCkgY2Fubm90IGJlIGltcGxlbWVudGVkLAo+ICsgICAgICAgICogaGVyZSBhY3BpX3Jl
Z2lzdGVyX2dzaSgpIGlzIHVzZWQgdG8gZ2V0IGdwaW8gaXJxLgo+ICsgICAgICAgICovCj4gKyAg
ICAgICBpcnEgPSBhY3BpX3JlZ2lzdGVyX2dzaShOVUxMLCBnc2ksIEFDUElfRURHRV9TRU5TSVRJ
VkUsIEFDUElfQUNUSVZFX0xPVyk7Cj4gKyAgICAgICBpZiAoaXJxIDwgMCkKPiArICAgICAgICAg
ICAgICAgcmV0dXJuIGlycTsKPiArCj4gKyAgICAgICBncGlvX2Jhc2UgPSBpb3JlbWFwKExPT05H
U09OX0dQSU9fUkVHX0JBU0UsIExPT05HU09OX0dQSU9fUkVHX1NJWkUpOwo+ICsgICAgICAgaWYg
KCFncGlvX2Jhc2UpIHsKPiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihncGlvX2Jhc2Up
Owo+ICsgICAgICAgICAgICAgICBnb3RvIGFjcGlfZmFpbGVkOwo+ICsgICAgICAgfQo+ICsKPiAr
ICAgICAgIHdyaXRlbChyZWFkbChncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX09FTikgfCBCSVQo
Qk1DX1JFU0VUX0dQSU8pLAo+ICsgICAgICAgICAgICAgIGdwaW9fYmFzZSArIExPT05HU09OX0dQ
SU9fT0VOKTsKPiArICAgICAgIHdyaXRlbChyZWFkbChncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElP
X0ZVTkMpICYgfkJJVChCTUNfUkVTRVRfR1BJTyksCj4gKyAgICAgICAgICAgICAgZ3Bpb19iYXNl
ICsgTE9PTkdTT05fR1BJT19GVU5DKTsKPiArICAgICAgIHdyaXRlbChyZWFkbChncGlvX2Jhc2Ug
KyBMT09OR1NPTl9HUElPX0lOVFBPTCkgJiB+QklUKEJNQ19SRVNFVF9HUElPKSwKPiArICAgICAg
ICAgICAgICBncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX0lOVFBPTCk7Cj4gKyAgICAgICB3cml0
ZWwocmVhZGwoZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19JTlRFTikgfCBCSVQoQk1DX1JFU0VU
X0dQSU8pLAo+ICsgICAgICAgICAgICAgIGdwaW9fYmFzZSArIExPT05HU09OX0dQSU9fSU5URU4p
Owo+ICsKPiArICAgICAgIHJldCA9IGRldm1fcmVxdWVzdF9pcnEocHJpdi0+ZGV2LCBpcnEsIGxz
MmtfYm1jX2ludGVycnVwdCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9T
SEFSRUQgfCBJUlFGX1RSSUdHRVJfRkFMTElORywgImxzMmtibWMgZ3BpbyIsIHByaXYpOwo+ICsg
ICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgZGV2X2Vycihwcml2LT5kZXYsICJsczJr
Ym1jIGdwaW8gcmVxdWVzdF9pcnEoJWQpIGZhaWxlZFxuIiwgaXJxKTsKPiArCj4gKyAgICAgICBp
b3VubWFwKGdwaW9fYmFzZSk7Cj4gKwo+ICthY3BpX2ZhaWxlZDoKPiArICAgICAgIGFjcGlfdW5y
ZWdpc3Rlcl9nc2koZ3NpKTsKPiArCj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICt9CkkgcHJlZmVy
IHRvIGlubGluZSB0aGUgbHMya19ibWNfZ3Bpb19yZXNldF9oYW5kbGVyKCkgZnVuY3Rpb24gdG8K
bHMya19ibWNfcGRhdGFfaW5pdGlhbCgpLCBvciBhdCBsZWFzdCBtb3ZlIGl0IGFmdGVyCmxzMmtf
Ym1jX3NhdmVfcGNpX2RhdGEoKS4KCgpIdWFjYWkKCj4gKwo+ICtzdGF0aWMgdm9pZCBsczJrX2Jt
Y19zYXZlX3BjaV9kYXRhKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBzdHJ1Y3QgbHMya19ibWNfcGRh
dGEgKnByaXYpCj4gK3sKPiArICAgICAgIHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQgPSBwZGV2LT5i
dXMtPnNlbGY7Cj4gKyAgICAgICBpbnQgaTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwg
QVJSQVlfU0laRShpbmRleCk7IGkrKykKPiArICAgICAgICAgICAgICAgcGNpX3JlYWRfY29uZmln
X2R3b3JkKHBhcmVudCwgaW5kZXhbaV0sICZwcml2LT5wY2lfZGF0YS5kYXRhW2ldKTsKPiArCj4g
KyAgICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShjaW5kZXgpOyBpKyspCj4gKyAgICAg
ICAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBjaW5kZXhbaV0sICZwcml2LT5w
Y2lfZGF0YS5jZGF0YVtpXSk7Cj4gKwo+ICsgICAgICAgcGNpX3JlYWRfY29uZmlnX2R3b3JkKHBh
cmVudCwgMHg4MGMsICZwcml2LT5wY2lfZGF0YS5kODBjKTsKPiArICAgICAgIHByaXYtPnBjaV9k
YXRhLmQ4MGMgPSAocHJpdi0+cGNpX2RhdGEuZDgwYyAmIH4oMyA8PCAxNykpIHwgQklUKDE3KTsK
PiArCj4gKyAgICAgICBwY2lfcmVhZF9jb25maWdfZHdvcmQocGFyZW50LCAweDcxYywgJnByaXYt
PnBjaV9kYXRhLmQ3MWMpOwo+ICsgICAgICAgcHJpdi0+cGNpX2RhdGEuZDcxYyB8PSBCSVQoMjYp
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGxzMmtfYm1jX3BkYXRhX2luaXRpYWwoc3RydWN0IHBj
aV9kZXYgKnBkZXYsIHN0cnVjdCBsczJrX2JtY19wZGF0YSAqcHJpdikKPiArewo+ICsgICAgICAg
aW50IHJldDsKPiArCj4gKyAgICAgICBsczJrX2JtY19zYXZlX3BjaV9kYXRhKHBkZXYsIHByaXYp
Owo+ICsKPiArICAgICAgIElOSVRfV09SSygmcHJpdi0+cmVzZXRfd29yaywgbHMya19ibWNfZXZl
bnRzX2ZuKTsKPiArCj4gKyAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZwZGV2LT5kZXYs
IHBkZXYtPmlycSwgbHMya19ibWNfaW50ZXJydXB0LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBJUlFGX1NIQVJFRCB8IElSUUZfVFJJR0dFUl9GQUxMSU5HLCAibHMya2JtYyBwY2ll
IiwgcHJpdik7Cj4gKyAgICAgICBpZiAocmV0KSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIo
cHJpdi0+ZGV2LCAibHMya2JtYyBwY2llIHJlcXVlc3RfaXJxKCVkKSBmYWlsZWRcbiIsIHBkZXYt
PmlycSk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKyAgICAgICB9Cj4gKwo+ICsg
ICAgICAgcmV0dXJuIGxzMmtfYm1jX2dwaW9fcmVzZXRfaGFuZGxlcihwcml2KTsKPiArfQo+ICsK
PiAgLyoKPiAgICogQ3VycmVudGx5IHRoZSBMb29uZ3Nvbi0ySzA1MDAgQk1DIGhhcmR3YXJlIGRv
ZXMgbm90IGhhdmUgYW4gaTJjIGludGVyZmFjZSB0bwo+ICAgKiBhZGFwdCB0byB0aGUgcmVzb2x1
dGlvbi4KPiBAQCAtMTAxLDEyICszMzAsMjUgQEAgc3RhdGljIGludCBsczJrX2JtY19wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqaWQpCj4gIHsK
PiAgICAgICAgIGludCByZXQgPSAwOwo+ICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IGJhc2U7Cj4g
KyAgICAgICBzdHJ1Y3QgbHMya19ibWNfcGRhdGEgKnByaXY7Cj4gICAgICAgICBzdHJ1Y3Qgc2lt
cGxlZmJfcGxhdGZvcm1fZGF0YSBwZDsKPgo+ICAgICAgICAgcmV0ID0gcGNpX2VuYWJsZV9kZXZp
Y2UoZGV2KTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4KPiArICAgICAgIHByaXYgPSBkZXZtX2t6YWxsb2MoJmRldi0+ZGV2LCBzaXplb2YoKnByaXYp
LCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmIChJU19FUlIocHJpdikpIHsKPiArICAgICAgICAg
ICAgICAgcmV0ID0gLUVOT01FTTsKPiArICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX3BjaTsK
PiArICAgICAgIH0KPiArCj4gKyAgICAgICBwcml2LT5kZXYgPSAmZGV2LT5kZXY7Cj4gKwo+ICsg
ICAgICAgcmV0ID0gbHMya19ibWNfcGRhdGFfaW5pdGlhbChkZXYsIHByaXYpOwo+ICsgICAgICAg
aWYgKHJldCkKPiArICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX3BjaTsKPiArCj4gICAgICAg
ICByZXQgPSBsczJrX2JtY19nZXRfdmlkZW9fbW9kZShkZXYsICZwZCk7Cj4gICAgICAgICBpZiAo
cmV0KQo+ICAgICAgICAgICAgICAgICBnb3RvIGRpc2FibGVfcGNpOwo+IC0tCj4gMi40Ny4xCj4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
