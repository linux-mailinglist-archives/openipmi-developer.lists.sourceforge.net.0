Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6184403481
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Sep 2021 08:50:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mNrPi-0005ct-D5; Wed, 08 Sep 2021 06:50:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1mNrPf-0005cl-PK
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 06:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7V0CbsvJQ3aj4hi90fHMDU4tso5DTyh8w9FQt6DTHU=; b=d1mzyW7fFfp+Q8D7KcQZmukHue
 AO3fU+Ane+v+JVvpdrtIt7UqdY8TcrM+ar8EN0Gwd+x3qRSzgBOWFzuZ0pZiAIfF36KbMOgIt59Jt
 usOyk1qUIFMzCAs1vanbpqS02ffVsoGloy6l3lvsHls+qzb8fcYjdQUlx3rXKyvnj+vA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a7V0CbsvJQ3aj4hi90fHMDU4tso5DTyh8w9FQt6DTHU=; b=LiJApQDimMLX0ukw/JHECd8o6Z
 NRP4flCDdJnZy4jSz6v14DarSiAK4XwqoMCj02MPhmim2gbEQQn4Fq4hKSVxG6hoh8nrHguxmbb8Z
 PX4jnkp3gtYbltHF/iBp/dTrd2p/6W4m6sHwBOdxdxLq2NWcQu7XyDbNG4eYTTlo9FaI=;
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1mNrPb-0001vR-G7
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Sep 2021 06:50:27 +0000
Received: from wwinf1e33 ([10.232.35.107]) by mwinf5d85 with ME
 id rJqE2500W2Jhpnu03JqE83; Wed, 08 Sep 2021 08:50:14 +0200
X-ME-Helo: wwinf1e33
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 08 Sep 2021 08:50:14 +0200
X-ME-IP: 80.77.224.234
Date: Wed, 8 Sep 2021 08:50:14 +0200 (CEST)
From: Marion et Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <450800047.345.1631083814685.JavaMail.www@wwinf1e33>
In-Reply-To: <20210908062719.GO1957@kadam>
References: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
 <20210908062719.GO1957@kadam>
MIME-Version: 1.0
X-Originating-IP: [80.77.224.234]
X-WUM-FROM: |~|
X-WUM-TO: |~|
X-WUM-CC: |~||~||~||~||~||~|
X-WUM-REPLYTO: |~|
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mNrPb-0001vR-G7
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Fix a memory leak
 in the error handling path of 'kcs_bmc_serio_add_device()'
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
Reply-To: Marion et Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: minyard@acm.org, andrew@aj.id.au, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 zweiss@equinix.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CsKgCgo+IE1lc3NhZ2UgZHUgMDgvMDkvMjEgMDg6MjgKPiBEZSA6ICJEYW4gQ2FycGVudGVyIiAK
PiBBIDogIkNocmlzdG9waGUgSkFJTExFVCIgCj4gQ29waWUgw6AgOiBtaW55YXJkQGFjbS5vcmcs
IHp3ZWlzc0BlcXVpbml4LmNvbSwgYW5kcmV3QGFqLmlkLmF1LCBvcGVuaXBtaS1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0LCBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnLCBrZXJu
ZWwtamFuaXRvcnNAdmdlci5rZXJuZWwub3JnCj4gT2JqZXQgOiBSZTogW1BBVENIXSBpcG1pOiBr
Y3NfYm1jOiBGaXggYSBtZW1vcnkgbGVhayBpbiB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0aCBvZiAn
a2NzX2JtY19zZXJpb19hZGRfZGV2aWNlKCknCj4gCj4gT24gVHVlLCBTZXAgMDcsIDIwMjEgYXQg
MTE6MDY6MzJQTSArMDIwMCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+ID4gSW4gdGhlIHVu
bGlrZWx5IGV2ZW50IHdoZXJlICdkZXZtX2t6YWxsb2MoKScgZmFpbHMgYW5kICdremFsbG9jKCkn
Cj4gPiBzdWNjZWVkcywgJ3BvcnQnIHdvdWxkIGJlIGxlYWtpbmcuCj4gPiAKPiA+IFRlc3QgZWFj
aCBhbGxvY2F0aW9uIHNlcGFyYXRlbHkgdG8gYXZvaWQgdGhlIGxlYWsuCj4gPiAKPiA+IEZpeGVz
OiAzYTNkMmY2YTRjNjQgKCJpcG1pOiBrY3NfYm1jOiBBZGQgc2VyaW8gYWRhcHRvciIpCj4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgCj4gPiAtLS0KPiA+IGRyaXZlcnMvY2hh
ci9pcG1pL2tjc19ibWNfc2VyaW8uYyB8IDQgKysrLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkva2NzX2JtY19zZXJpby5jIGIvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19zZXJp
by5jCj4gPiBpbmRleCA3OTQ4Y2FiZGU1MGIuLjdlMjA2NzYyOGE2YyAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfc2VyaW8uYwo+ID4gKysrIGIvZHJpdmVycy9jaGFy
L2lwbWkva2NzX2JtY19zZXJpby5jCj4gPiBAQCAtNzMsMTAgKzczLDEyIEBAIHN0YXRpYyBpbnQg
a2NzX2JtY19zZXJpb19hZGRfZGV2aWNlKHN0cnVjdCBrY3NfYm1jX2RldmljZSAqa2NzX2JtYykK
PiA+IHN0cnVjdCBzZXJpbyAqcG9ydDsKPiA+IAo+ID4gcHJpdiA9IGRldm1fa3phbGxvYyhrY3Nf
Ym1jLT5kZXYsIHNpemVvZigqcHJpdiksIEdGUF9LRVJORUwpOwo+ID4gKyBpZiAoIXByaXYpCj4g
PiArIHJldHVybiAtRU5PTUVNOwo+ID4gCj4gPiAvKiBVc2Uga3phbGxvYygpIGFzIHRoZSBhbGxv
Y2F0aW9uIGlzIGNsZWFuZWQgdXAgd2l0aCBrZnJlZSgpIHZpYSBzZXJpb191bnJlZ2lzdGVyX3Bv
cnQoKSAqLwo+IAo+IFRoZSBzZXJpb191bnJlZ2lzdGVyX3BvcnQoKSBjYWxscyBzZXJpb19kZXN0
cm95X3BvcnQoKSB3aGljaCBjYWxscwo+IHB1dF9kZXZpY2UoJnNlcmlvLT5kZXYpLiBCdXQgSSB3
YXNuJ3QgYWJsZSB0byB0cmFjayBpdCBmdXJ0aGVyIHRoYW4KPiB0aGF0IHRvIHRoZSBhY3R1YWwg
a2ZyZWUoKS4KCkhpIERhbiwKCkNoZWNraW5nIHRoaXMgcmVsZWFzZSBwYXRoIHdhcyBub3QgdGhl
IGdvYWwgb2YgdGhpcyBwYXRjaC4KSXQgd2FzIG9ubHkgYWJvdXQgdGhlIFZFUlJZWVlZIHVubGlr
ZWx5IG1lbW9yeSBsZWFrLgoKSG93ZXZlciBteSB1bmRlcnN0YW5kaW5nIGlzOgprY3NfYm1jX3Nl
cmlvX2FkZF9kZXZpY2UKLS0+IHNlcmlvX3JlZ2lzdGVyX3BvcnQKLS0+IF9fc2VyaW9fcmVnaXN0
ZXJfcG9ydAotLT4gc2VyaW9faW5pdF9wb3J0Ci0tPiBzZXJpby0+ZGV2LnJlbGVhc2UgPSBzZXJp
b19yZWxlYXNlX3BvcnQKCkFuZCBpbiBzZXJpb19yZWxlYXNlX3BvcnQ6CnN0cnVjdCBzZXJpbyAq
c2VyaW8gPSB0b19zZXJpb19wb3J0KGRldik7CmtmcmVlKHNlcmlvKTsKCkZvciBtZSwgdGhpcyAn
c2VyaW8nIGxvb2tzIHRvIHRoZSBvbmUgYWxsb2NhdGVkIGJ5ICdrY3NfYm1jX3NlcmlvX2FkZF9k
ZXZpY2UnLgpJIHRoaW5rIHRoYXQgdGhlIGNvbW1lbnQgaXMgY29ycmVjdC4KCkNKCgo+IAo+IElz
IHRoZXJlIGEgdHJpY2sgdG8gZmluZGluZyAtPnJlbGVhc2UoKSBmdW5jdGlvbnM/Cj4gCj4gcmVn
YXJkcywKPiBkYW4gY2FycGVudGVyCj4gCj4gCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
