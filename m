Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B263B0A6F6
	for <lists+openipmi-developer@lfdr.de>; Fri, 18 Jul 2025 17:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T9kRCZXiTL9P1IJZTVAS1AcDE7CzWkri783PvaNZbqQ=; b=JXASF2CRbvohvQLi9IIfUCi3oR
	2DYhRcSSnHZbTpGeJYUIZpp4bZEzbrZ/b6z01NC3hWml/ggUMaM52/g0PBTUZxKj7gM0O9QkXGiBD
	i+pBRwF0mzUsD4JN6hiLqICdz2YR806QFAzWgS5tUnNrYyOJKq6yeST/piBm2Ucg9OHE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ucmqD-0000f2-RS;
	Fri, 18 Jul 2025 15:17:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1ucmqC-0000ew-4R
 for openipmi-developer@lists.sourceforge.net;
 Fri, 18 Jul 2025 15:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bVfZ9Xl/RWnrqT3lnKIyts4DTAc+WBVN5wBXMF6mlA0=; b=MSrR/u63ZEYPu7mQQhWWlUia3v
 iuZXuay8KB2M11m3jGAlEhW4uumr3VMZfSLzJuN7sotAhOJAQHva2Ovx+lGqXeOjs4+ycZ3aoew/p
 tibmUS7pZKZaJUNkEMSZVAmaveeWBlf9T+eFOzs+hi2Bk3x5CDnzU+vF7oobtq9wDt+w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bVfZ9Xl/RWnrqT3lnKIyts4DTAc+WBVN5wBXMF6mlA0=; b=GT/D5nFubOdkeQyANGRRXyOK6W
 yNOgtUc1lKpl//XowW0pC+AKBFg+q2pAaH0b16wtMqrM+CQKUy/XgHFoH4C5GDRepXW+47HI09WO5
 fEFJ3yhQWCFtitFbP1/lI7DW1I5BMpDRJJXZuhPAt73hQz1gPBRhcxXu0/AOcU2W9Q/4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ucmqB-0007sA-LB for openipmi-developer@lists.sourceforge.net;
 Fri, 18 Jul 2025 15:17:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 282655C6533;
 Fri, 18 Jul 2025 14:02:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 354E0C4CEEB;
 Fri, 18 Jul 2025 14:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752847331;
 bh=rsBNWqlTL8i54Sx9D9C3mxse6uvzSkaPpwO3d+k29qE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SIAe4PMdV3yaxsYMtxJtlJsUXv78hPNbsWugENbzbJNPe+RC6VJ1nRWh+0Gf95cdD
 CluoMoNzjIPb7dRh+ooSu/GNi5xFyM17A322vAI2klq3/F1rWLvnnePfLU3PKp84Yo
 oZ4xQEfusCXGbZ41hVhlapz6aZqOPZg4jGVE/EuRxr4uVNdRIMGcw4iBOUKc547h+5
 3VeUOpQC0HIoDWdswLfM+eW1kPkEMZG/MtYUR3ZLTBCO5q3GrZYqcuotslFeI39gve
 uJ3nyhCjHM4YiAxiae6p09Ka/pgZI0gARXF5tWo2JQahShWWsPDThUoL2Kl5YB7uMw
 YTdtMZpm+h94Q==
Date: Fri, 18 Jul 2025 15:02:06 +0100
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <20250718140206.GI11056@google.com>
References: <cover.1751617911.git.zhoubinbin@loongson.cn>
 <2252dbc3970264371278182ebaf7669fe77d33a2.1751617911.git.zhoubinbin@loongson.cn>
 <20250710095629.GH1431498@google.com>
 <CAMpQs4JccEmMAguB92jQriwD65Ra+hQKMZnjAsWhNOKhN_Om7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4JccEmMAguB92jQriwD65Ra+hQKMZnjAsWhNOKhN_Om7A@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 11 Jul 2025, Binbin Zhou wrote: > Hi Lee: > > Thanks
 for your review. > > On Thu, Jul 10, 2025 at 5:56 PM Lee Jones <lee@kernel.org>
 wrote: > > > > On Fri, 04 Jul 2025,
 Binbin Zhou wrote: > > > > > The Loongson-2K
 Board Management C [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ucmqB-0007sA-LB
Subject: Re: [Openipmi-developer] [PATCH v7 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC core driver
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
From: Lee Jones via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Lee Jones <lee@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, Corey Minyard <corey@minyard.net>,
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCAxMSBKdWwgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cgo+IEhpIExlZToKPiAKPiBU
aGFua3MgZm9yIHlvdXIgcmV2aWV3Lgo+IAo+IE9uIFRodSwgSnVsIDEwLCAyMDI1IGF0IDU6NTbi
gK9QTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBGcmksIDA0
IEp1bCAyMDI1LCBCaW5iaW4gWmhvdSB3cm90ZToKPiA+Cj4gPiA+IFRoZSBMb29uZ3Nvbi0ySyBC
b2FyZCBNYW5hZ2VtZW50IENvbnRyb2xsZXIgcHJvdmlkZXMgYW4gUENJZSBpbnRlcmZhY2UKPiA+
ID4gdG8gdGhlIGhvc3QgdG8gYWNjZXNzIHRoZSBmZWF0dXJlIGltcGxlbWVudGVkIGluIHRoZSBC
TUMuCj4gPiA+Cj4gPiA+IFRoZSBCTUMgaXMgYXNzZW1ibGVkIG9uIGEgc2VydmVyIHNpbWlsYXIg
dG8gdGhlIHNlcnZlciBtYWNoaW5lIHdpdGgKPiA+ID4gTG9vbmdzb24tMyBDUFUuIEl0IHN1cHBv
cnRzIG11bHRpcGxlIHN1Yi1kZXZpY2VzIGxpa2UgRFJNIGFuZCBJUE1JLgo+ID4gPgo+ID4gPiBD
by1kZXZlbG9wZWQtYnk6IENob25nIFFpYW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5jbj4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogQ2hvbmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+ID4gPiBS
ZXZpZXdlZC1ieTogSHVhY2FpIENoZW4gPGNoZW5odWFjYWlAbG9vbmdzb24uY24+Cj4gPiA+IEFj
a2VkLWJ5OiBDb3JleSBNaW55YXJkIDxjb3JleUBtaW55YXJkLm5ldD4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogQmluYmluIFpob3UgPHpob3ViaW5iaW5AbG9vbmdzb24uY24+Cj4gPiA+IC0tLQo+ID4g
PiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgIHwgICA2ICsrCj4gPiA+ICBkcml2ZXJzL21m
ZC9LY29uZmlnICAgICAgICAgfCAgMTMgKysrCj4gPiA+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAg
ICAgICAgfCAgIDIgKwo+ID4gPiAgZHJpdmVycy9tZmQvbHMyay1ibWMtY29yZS5jIHwgMTU2ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgNCBmaWxlcyBjaGFuZ2Vk
LCAxNzcgaW5zZXJ0aW9ucygrKQoKWy4uLl0KCj4gPiA+ICtzdGF0aWMgaW50IGxzMmtfYm1jX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICppZCkK
PiA+ID4gK3sKPiA+ID4gKyAgICAgc3RydWN0IHNpbXBsZWZiX3BsYXRmb3JtX2RhdGEgcGQ7Cj4g
PiA+ICsgICAgIHJlc291cmNlX3NpemVfdCBiYXNlOwo+ID4gPiArICAgICBpbnQgcmV0Owo+ID4g
PiArCj4gPiA+ICsgICAgIHJldCA9IHBjaV9lbmFibGVfZGV2aWNlKGRldik7Cj4gPiA+ICsgICAg
IGlmIChyZXQpCj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gKwo+ID4gPiAr
ICAgICByZXQgPSBsczJrX2JtY19wYXJzZV9tb2RlKGRldiwgJnBkKTsKPiA+ID4gKyAgICAgaWYg
KHJldCkKPiA+ID4gKyAgICAgICAgICAgICBnb3RvIGRpc2FibGVfcGNpOwo+ID4gPiArCj4gPiA+
ICsgICAgIGxzMmtfYm1jX2NlbGxzWzBdLnBsYXRmb3JtX2RhdGEgPSAmcGQ7Cj4gPiA+ICsgICAg
IGxzMmtfYm1jX2NlbGxzWzBdLnBkYXRhX3NpemUgPSBzaXplb2YocGQpOwo+ID4KPiA+IFRoaXMg
aXMgZnJhZ2lsZS4KPiA+Cj4gPiBQbGVhc2UgaWRlbnRpZnkgdGhlIGVsZW1lbnRzIGluIGxzMmtf
Ym1jX2NlbGxzIGFuZCB1c2UgaXQgdG8gaW5kZXggaGVyZS4KPiA+Cj4gPiBTZWU6IGBzdGF0aWMg
c3RydWN0IG1mZF9jZWxsIGFzMzcxMV9zdWJkZXZzYAo+IAo+IEhvdyBhYm91dCB0aGlzOgo+IAo+
IGVudW0gewo+ICAgICAgICAgTFMyS19CTUNfRElTUExBWSwKPiAgICAgICAgIExTMmtfQk1DX0lQ
TUkwLAo+ICAgICAgICAgTFMya19CTUNfSVBNSTEsCj4gICAgICAgICBMUzJrX0JNQ19JUE1JMiwK
PiAgICAgICAgIExTMmtfQk1DX0lQTUkzLAo+ICAgICAgICAgTFMya19CTUNfSVBNSTQsCj4gfTsK
PiAKPiBzdGF0aWMgc3RydWN0IG1mZF9jZWxsIGxzMmtfYm1jX2NlbGxzW10gPSB7Cj4gICAgICAg
ICBbTFMyS19CTUNfRElTUExBWV0gPSB7Cj4gICAgICAgICAgICAgICAgIC5uYW1lID0gInNpbXBs
ZS1mcmFtZWJ1ZmZlciIsCj4gICAgICAgICAgICAgICAgIC5udW1fcmVzb3VyY2VzID0gQVJSQVlf
U0laRShsczJrX2Rpc3BsYXlfcmVzb3VyY2VzKSwKPiAgICAgICAgICAgICAgICAgLnJlc291cmNl
cyA9IGxzMmtfZGlzcGxheV9yZXNvdXJjZXMKPiAgICAgICAgIH0sCj4gICAgICAgICBbTFMya19C
TUNfSVBNSTBdID0gewo+ICAgICAgICAgICAgICAgICAubmFtZSA9ICJsczJrLWlwbWktc2kiLAo+
ICAgICAgICAgICAgICAgICAubnVtX3Jlc291cmNlcyA9IEFSUkFZX1NJWkUobHMya19pcG1pMF9y
ZXNvdXJjZXMpLAo+ICAgICAgICAgICAgICAgICAucmVzb3VyY2VzID0gbHMya19pcG1pMF9yZXNv
dXJjZXMKPiAgICAgICAgIH0sCj4gICAgICAgICBbTFMya19CTUNfSVBNSTFdID0gewo+ICAgICAg
ICAgICAgICAgICAubmFtZSA9ICJsczJrLWlwbWktc2kiLAo+ICAgICAgICAgICAgICAgICAubnVt
X3Jlc291cmNlcyA9IEFSUkFZX1NJWkUobHMya19pcG1pMV9yZXNvdXJjZXMpLAo+ICAgICAgICAg
ICAgICAgICAucmVzb3VyY2VzID0gbHMya19pcG1pMV9yZXNvdXJjZXMKPiAgICAgICAgIH0sCj4g
ICAgICAgICBbTFMya19CTUNfSVBNSTJdID0gewo+ICAgICAgICAgICAgICAgICAubmFtZSA9ICJs
czJrLWlwbWktc2kiLAo+ICAgICAgICAgICAgICAgICAubnVtX3Jlc291cmNlcyA9IEFSUkFZX1NJ
WkUobHMya19pcG1pMl9yZXNvdXJjZXMpLAo+ICAgICAgICAgICAgICAgICAucmVzb3VyY2VzID0g
bHMya19pcG1pMl9yZXNvdXJjZXMKPiAgICAgICAgIH0sCj4gICAgICAgICBbTFMya19CTUNfSVBN
STNdID0gewo+ICAgICAgICAgICAgICAgICAubmFtZSA9ICJsczJrLWlwbWktc2kiLAo+ICAgICAg
ICAgICAgICAgICAubnVtX3Jlc291cmNlcyA9IEFSUkFZX1NJWkUobHMya19pcG1pM19yZXNvdXJj
ZXMpLAo+ICAgICAgICAgICAgICAgICAucmVzb3VyY2VzID0gbHMya19pcG1pM19yZXNvdXJjZXMK
PiAgICAgICAgIH0sCj4gICAgICAgICBbTFMya19CTUNfSVBNSTRdID0gewo+ICAgICAgICAgICAg
ICAgICAubmFtZSA9ICJsczJrLWlwbWktc2kiLAo+ICAgICAgICAgICAgICAgICAubnVtX3Jlc291
cmNlcyA9IEFSUkFZX1NJWkUobHMya19pcG1pNF9yZXNvdXJjZXMpLAo+ICAgICAgICAgICAgICAg
ICAucmVzb3VyY2VzID0gbHMya19pcG1pNF9yZXNvdXJjZXMKPiAgICAgICAgIH0sCj4gfTsKPiAK
PiBhbmQKPiAKPiAgICAgICAgIGxzMmtfYm1jX2NlbGxzW0xTMktfQk1DX0RJU1BMQVldLnBsYXRm
b3JtX2RhdGEgPSAmcGQ7Cj4gICAgICAgICBsczJrX2JtY19jZWxsc1tMUzJLX0JNQ19ESVNQTEFZ
XS5wZGF0YV9zaXplID0gc2l6ZW9mKHBkKTsKClllcywgdGhhdCdzIGl0LgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
