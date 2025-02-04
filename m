Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6475FA26B23
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 05:51:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfAts-0003GX-AP;
	Tue, 04 Feb 2025 04:51:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1tfAtq-0003GN-Ke
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 04:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVO7pPvS9it63pRV7s9Xy2kC4yPGFJZs59pPpi//UPs=; b=G8B30Q6JVyLXzaSPRIJjeHD0sT
 cd1J1AK/iwwcTxv/A3rL+7xteXuKpaiO/vD0WuVP+Cksm1vRdlyAZohLsJfS7uVMsjRUTp20CKpHF
 0wCJfzQTxzZZj0QM5IrmQ9Pw6XK9hh/Pvml4yPs5TSHX2Fm7qE5TDdKpqP3YCRnmAarw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OVO7pPvS9it63pRV7s9Xy2kC4yPGFJZs59pPpi//UPs=; b=c0ADnlnFAILM8i8VaFCQiiaKFY
 I03dQskiFsmCJGXJja/Wyc020eOA1JudcZ91M1bSSjpre+Lgdwj9rLHpLAbZinnUIxRTe2IDELuha
 BQin8iqlBAt82Dg+VriaB7EV9hEhCA3YffxOB4rcE5pA2XNwy13I+Qk9WZILtBkJa1YA=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfAto-0000uj-QZ for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 04:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1738643597;
 bh=OVO7pPvS9it63pRV7s9Xy2kC4yPGFJZs59pPpi//UPs=;
 h=Subject:From:To:Date:In-Reply-To:References;
 b=AZ5+ijlKDQgxKTEifzz0lMAm8+CID+Vq9cW8amOSUOU2Lnrbgnn+RCsZMj1J/bF9P
 IXpGFNm7WoQQrR5ryZs0gtv7IJQ3SiM/fDn72Ih4I/3VGF2Bp/MKobboggFt1+xwPE
 20bsV5MIrHoCNcVNagNJVt72f4eopKbWzvG+eqWWe7fsd1hDwWs7vJFg5vOctzsb2t
 gUfSqg0iYSd5RlppAuDM2qcmEB8YxwbJspydO//mUNV6Xhu+4fceeckJJy3Mn7gSUv
 EtsHS5/nOLzIYgNbpyy78UmaGA5ttbtGugGQBuhz2hKfevC4/FMBLMO1bOPGqqbJV2
 T3oJaaY0oFD8A==
Received: from [192.168.68.112] (58-7-156-140.dyn.iinet.net.au [58.7.156.140])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D96DD734A6;
 Tue,  4 Feb 2025 12:33:13 +0800 (AWST)
Message-ID: <79b819b6d06e3be0aa7e7f6872353f103294710c.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Ninad Palsule <ninad@linux.ibm.com>, brgl@bgdev.pl, 
 linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org,
 krzk+dt@kernel.org,  conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net,  edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com,  openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au,  devicetree@vger.kernel.org,
 eajames@linux.ibm.com,  linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,  linux-kernel@vger.kernel.org
Date: Tue, 04 Feb 2025 15:03:13 +1030
In-Reply-To: <20250203144422.269948-1-ninad@linux.ibm.com>
References: <20250203144422.269948-1-ninad@linux.ibm.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ninad, On Mon, 2025-02-03 at 08:44 -0600, Ninad Palsule
    wrote: > Hello, > > Please review the patch set version 7. > > V7: > ---
   >   - Updated pattern in the ast2400-gpio.yaml >   - Dropped "dt-bindings:
    n [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [203.29.241.158 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [203.29.241.158 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1tfAto-0000uj-QZ
Subject: Re: [Openipmi-developer] [PATCH v7 0/9] DTS updates for system1 BMC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgTmluYWQsCgpPbiBNb24sIDIwMjUtMDItMDMgYXQgMDg6NDQgLTA2MDAsIE5pbmFkIFBhbHN1
bGUgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gUGxlYXNlIHJldmlldyB0aGUgcGF0Y2ggc2V0IHZlcnNp
b24gNy4KPiAKPiBWNzoKPiAtLS0KPiDCoCAtIFVwZGF0ZWQgcGF0dGVybiBpbiB0aGUgYXN0MjQw
MC1ncGlvLnlhbWwKPiDCoCAtIERyb3BwZWQgImR0LWJpbmRpbmdzOiBuZXQ6IGZhcmFkYXksZnRn
bWFjMTAwIiBwYXRjaCBzZW5kaW5nIGl0Cj4gwqDCoMKgIHNlcGFyYXRlbHkuCj4gCj4gVjY6Cj4g
LS0tCj4gwqAgLSBGaXhlZCBkdF9iaW5kaW5nX2NoZWNrIGVycm9ycyBmb3IgaXBtYi1kZXYueWFt
bAo+IMKgIC0gQ2hhbmdlZCB0aGUgaG9nIHBhcnNpbmcgcGF0dGVybiBpbiBhc3QyNDAwLWdwaW8K
PiAKPiBWNToKPiAtLS0KPiDCoCAtIEltcHJvdmVkIElQQk0gZGV2aWNlIGRvY3VtZW50YXRpb24u
Cj4gwqAgLSBBZGRlZCB0aGUgaG9nIHBhcnNpbmcgaW4gYXN0MjQwMC1ncGlvCj4gCj4gVjQ6Cj4g
LS0tCj4gwqAgLSBSZW1vdmVkICJBZGQgUkdNSUkgc3VwcG9ydCIgcGF0Y2ggYXMgaXQgbmVlZHMg
c29tZSB3b3JrIGZyb20gdGhlCj4gwqDCoMKgIGRyaXZlciBzaWRlLgo+IMKgIC0gSW1wcm92ZWQg
SVBCTSBkZXZpY2UgZG9jdW1lbnRhdGlvbi4KPiDCoCAtIFRoZXJlIGlzIGEgbmV3IHdhcm5pbmcg
aW4gQ0hFQ0tfRFRCUyB3aGljaCBhcmUgZmFsc2UgcG9zaXRpdmUgc28KPiDCoMKgwqAgaWdub3Jl
ZCB0aGVtLgo+IMKgwqDCoCBhcmNoL2FybS9ib290L2R0cy9hc3BlZWQvYXNwZWVkLWJtYy1pYm0t
c3lzdGVtMS5kdGI6Cj4gZ3Bpb0AxZTc4MDAwMDogJ2hvZy0wJywgJ2hvZy0xJywgJ2hvZy0yJywg
J2hvZy0zJyBkbyBub3QgbWF0Y2ggYW55IG9mCj4gdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTld
KycKPiAKPiBWMzoKPiAtLS0KPiDCoCAtIEZpeGVkIGR0X2JpbmRpbmdfY2hlY2sgd2FybmluZ3Mg
aW4gaXBtYi1kZXYueWFtbAo+IMKgIC0gVXBkYXRlZCB0aXRsZSBhbmQgZGVzY3JpcHRpb24gaW4g
aXBtYi1kZXYueWFtbCBmaWxlLgo+IMKgIC0gVXBkYXRlZCBpMmMtcHJvdG9jb2wgZGVzY3JpcHRp
b24gaW4gaXBtYi1kZXYueWFtbCBmaWxlLgo+IAo+IFYyOgo+IC0tLQo+IMKgIEZpeGVkIENIRUNL
X0RUQlMgZXJyb3JzIGJ5Cj4gwqDCoMKgIC0gVXNpbmcgZ2VuZXJpYyBub2RlIG5hbWVzCj4gwqDC
oMKgIC0gRG9jdW1lbnRpbmcgcGh5LW1vZGUgcmdtaWktcnhpZCBpbiBmdGdtYWMxMDAueWFtbAo+
IMKgwqDCoCAtIEFkZGluZyBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIElQTUIgZGV2aWNlIGlu
dGVyZmFjZQo+IAo+IE5JTkFEIFBBTFNVTEUgKDYpOgoKV2h5IGlzIHlvdXIgbmFtZSBhbGwgaW4g
Y2FwcyBoZXJlIGJ1dCBub3QgZm9yIHRoZSBiaW5kaW5nIHBhdGNoZXMKYmVsb3c/IENhbiB5b3Ug
Zml4IHRoYXQgdXA/Cgo+IMKgIEFSTTogZHRzOiBhc3BlZWQ6IHN5c3RlbTE6IEFkZCBJUE1CIGRl
dmljZQo+IMKgIEFSTTogZHRzOiBhc3BlZWQ6IHN5c3RlbTE6IEFkZCBHUElPIGxpbmUgbmFtZQo+
IMKgIEFSTTogZHRzOiBhc3BlZWQ6IHN5c3RlbTE6IFJlZHVjZSBzZ3BpbyBzcGVlZAo+IMKgIEFS
TTogZHRzOiBhc3BlZWQ6IHN5c3RlbTE6IFVwZGF0ZSBMRUQgZ3BpbyBuYW1lCj4gwqAgQVJNOiBk
dHM6IGFzcGVlZDogc3lzdGVtMTogUmVtb3ZlIFZScyBtYXg4OTUyCj4gwqAgQVJNOiBkdHM6IGFz
cGVlZDogc3lzdGVtMTogTWFyayBHUElPIGxpbmUgaGlnaC9sb3cKPiAKPiBOaW5hZCBQYWxzdWxl
ICgzKToKPiDCoCBiaW5kaW5nczogaXBtaTogQWRkIGJpbmRpbmcgZm9yIElQTUIgZGV2aWNlIGlu
dGYKClRoaXMgb25lIG5lZWRzIGFuIGFjayBmcm9tIENvcmV5IGlmIEknbSB0byB0YWtlIGl0LgoK
PiDCoCBkdC1iaW5kaW5nczogZ3BpbzogYXN0MjQwMC1ncGlvOiBBZGQgaG9ncyBwYXJzaW5nCgpU
aGlzIG9uZSBuZWVkcyBhbiBhY2sgZnJvbSBMaW51cyBXIG9yIEJhcnRvc3ogaWYgSSdtIHRvIHRh
a2UgaXQuCkhvd2V2ZXIsIGl0J3MgYWxzbyBjYXVzaW5nIHNvbWUgZ3JpZWYgZnJvbSBSb2IncyBi
b3Q6CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMTczODU5Njk0ODg5LjI2MDE3MjYuMTA2
MTgzMzYyMTk3MjYxOTM4MjQucm9iaEBrZXJuZWwub3JnLwoKQXMgdGhlIHJlcG9ydGVkIG5vZGVz
IHNob3VsZCBhbGwgYmUgaG9ncyB0aGUgbmFtZSBzaG91bGRuJ3QgbWF0dGVyCmFueXdoZXJlIGVs
c2UgKGFzIGZhciBhcyBJJ20gYXdhcmUpLiBJdCB3b3VsZCBiZSBuaWNlIGlmIGFsbCB0aGUKd2Fy
bmluZ3Mgd2VyZSBjbGVhbmVkIHVwIGJlZm9yZSB3ZSBtZXJnZWQgdGhlIGJpbmRpbmcgdXBkYXRl
LiBUaGF0IHdheQp3ZSBkb24ndCBjYXVzZSBldmVyeW9uZSBlbHNlIGxvb2tpbmcgYXQgdGhlIENI
RUNLX0RUQlM9eSBvdXRwdXQgbW9yZQpncmllZiB0aGFuIHRoZXkgYWxyZWFkeSBnZXQgZm9yIHRo
ZSBBc3BlZWQgZGV2aWNldHJlZXMuCgpJbiBvcmRlciB0byBub3QgZ2V0IGJvZ2dlZCBkb3duIGl0
IG1pZ2h0IGJlIHdvcnRoIHNwbGl0dGluZyBvdXQgYm90aAp0aGUgSVBNQi0gYW5kIEdQSU8tIHJl
bGF0ZWQgcGF0Y2hlcyBsaWtlIHlvdSBkaWQgdGhlIEZUR01BQzEwMCBwYXRjaCwKYW5kIHRoZW4g
SSBjYW4gbWVyZ2Ugd2hhdCByZW1haW5zIChmcm9tIGEgcXVpY2sgbG9vayB0aGV5IHNlZW0KcmVs
YXRpdmVseSB1bmNvbnRyb3ZlcnNpYWwpLgoKQW5kcmV3Cgo+IMKgIEFSTTogZHRzOiBhc3BlZWQ6
IHN5c3RlbTE6IERpc2FibGUgZ3BpbyBwdWxsIGRvd24KPiAKPiDCoC4uLi9iaW5kaW5ncy9ncGlv
L2FzcGVlZCxhc3QyNDAwLWdwaW8ueWFtbMKgwqDCoCB8wqDCoCA2ICsKPiDCoC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2lwbWkvaXBtYi1kZXYueWFtbMKgwqDCoCB8wqAgNTYgKysrKysrKwo+IMKg
Li4uL2R0cy9hc3BlZWQvYXNwZWVkLWJtYy1pYm0tc3lzdGVtMS5kdHPCoMKgwqDCoCB8IDEzOSAr
KysrKysrKysrKy0tLS0tCj4gLS0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTQ3IGluc2VydGlvbnMo
KyksIDU0IGRlbGV0aW9ucygtKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL2lwbWItCj4gZGV2LnlhbWwKPiAKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVs
b3Blcgo=
