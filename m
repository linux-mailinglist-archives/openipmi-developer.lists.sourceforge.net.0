Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A6B7B4B4A
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 08:06:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnC4I-0008Dp-6o;
	Mon, 02 Oct 2023 06:06:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1qnC43-0008DW-NY
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 06:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oZ9HDjNx4WgBiz0r6uaaW4itoozAOtfVq7hjmUW17vc=; b=dchqdSZHGr9Whnud9t3kTnIkgt
 X+qab8mAzb1NP5d4rFhFmAkl2dYVOpNnmVOAI3V5G7JJuJHkADtUfCcjD1oAOGh80UvtcZ/PTc25o
 9zN+7nUqPOAlW+4QcZM+gHbxm1ESyvsZubo4KFhxZxa2EcH2omQEOcnCkFFHA8Ell1Rk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oZ9HDjNx4WgBiz0r6uaaW4itoozAOtfVq7hjmUW17vc=; b=CJEhXRyx6hkFhzdE/95UCYKIyT
 cIugmJCWZgfHfQMGa4U+2DV9wonFgIWG1ty+ApaP/xn+3g8VoIte+nzCFRsjI5iQml5xITkQdBXbG
 cyRSyhaNz7REaFYMsOoiHbDCVXLrcT06EnT8CbbzVf6HacB2CGd2fic5ZFeXEzGxyRqQ=;
Received: from [212.122.41.197] (helo=mail.flyingcircus.io)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnC3u-0002jA-Mv for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 06:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1696226730;
 bh=oZ9HDjNx4WgBiz0r6uaaW4itoozAOtfVq7hjmUW17vc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=JArUsxmqTGDr7e3jai/auDCSAghyBVXjqMcTjjmbeYW+GsTXlJLawnRcrzHH8Genx
 SVCBGU0jGfY9xwqVr/lCbJrEkN1EcusrD9URxnRdGxRh2aYByWL0mDOTWZsXjZqe6P
 FS3FD4eET8qiE5P6FF8tPDY7pbb6uOyglYx01aXc=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
X-Priority: 3
In-Reply-To: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
Date: Mon, 2 Oct 2023 08:05:09 +0200
Message-Id: <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > On 1. Oct 2023, at 22:59,
 Corey Minyard <minyard@acm.org>
 wrote: > > On Oct 1, 2023 11:14 AM, Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net> wrote: > Hi, > > On 1 [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qnC3u-0002jA-Mv
Subject: Re: [Openipmi-developer] SOL via syslog?
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgo+IE9uIDEuIE9jdCAyMDIzLCBhdCAyMjo1OSwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBh
Y20ub3JnPiB3cm90ZToKPiAKPiBPbiBPY3QgMSwgMjAyMyAxMToxNCBBTSwgQ2hyaXN0aWFuIFRo
ZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIDxvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0PiB3cm90ZToKPiBIaSwKPiA+IE9uIDEuIE9jdCAyMDIzLCBhdCAwMzo0OSwg
Q29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiA+IAo+ID4gT24gU2F0LCBT
ZXAgMzAsIDIwMjMgYXQgMTE6MTQ6MDFQTSArMDIwMCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEgT3Bl
bmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+IEhpLAo+ID4+IAo+ID4+IHNvcnJ5IGlmIHRoaXMg
aXNu4oCZdCBkaXJlY3RseSBhIGRldmVsb3BlcnMgcXVlc3Rpb24sIGJ1dCBJ4oCZdmUgcnVuIG91
dCBvZiBhdmVudWVzIGFmdGVyIGdvb2dsaW5nIGFuZCBsb29raW5nIGFyb3VuZOKApiAKPiA+PiAK
PiA+PiBXZeKAmXJlIGV4cGVyaWVuY2luZyB3ZWlyZCBzeXN0ZW0gc3RhYmlsaXR5IGlzc3VlIHdo
ZXJlIHRoZSDigJxsb2cgdG8gU0VM4oCdIGRvZXNu4oCZdCBjdXQgaXQ6IHdlIHNlZSB3YXRjaGRv
ZyByZWJvb3RzIGJ1dCBubyBrZXJuZWwgb3V0cHV0IHdoYXRzb2V2ZXIgZW5kaW5nIHVwIGluIHRo
ZSBTRUwuIChJ4oCZdmUgZGVidWdnZWQgdGhpcyB3aXRoIENvcmV5IGJlZm9yZSBhbmQgd2UgZm91
bmQgc29tZXRoaW5nIHRvIGZpeCBidXQgdGhlIHdhdGNoZG9nIGV2ZW50cyB3ZeKAmXJlIGV4cGVy
aWVuY2luZyBzdGlsbCBkb27igJl0IGdldCBsb2dnZWQgaW4gbW9yZSBkZXRhaWwuKQo+ID4gCj4g
PiBDYW4geW91IG5vdCBnZXQga2VybmVsIGNvcmVkdW1wcz8KPiBVbmZvcnR1bmF0ZWx5IG5vIGFu
ZCBJIHN0aWxsIGhhdmUgYWJzb2x1dGVseSBub3cgaWRlYSB3aHkgdGhlIHdhdGNoZG9nIHRyaWdn
ZXJz4oCmIEkgaGF2ZSBjdXJyZW50bHkgYXR0YWNoZWQgZG96ZW5zIG9mIHNlcnZlcnMgdGhhdCBh
cmUgcGFydCBvZiBhIG15c3RlcmlvdXMgc2VyaWVzIG9mIGNyYXNoZXMgYnV0IHRoZXkgZGlkbuKA
mXQgY3Jhc2ggYWZ0ZXIgSSBhdHRhY2hlZCB0aGUgU09MIGNvbnRpbnVvdXNseS4gSnVzdCBteSBr
aW5kIG9mIGx1Y2sgSSBndWVzcyDigKYgOykKPiAKPiBJdCBtaWdodCBiZSBhIGNsdWUuICBDYW4g
eW91IG1ha2Ugc3VyZSBmbG93LWNvbnRyb2wgaXMgdHVybmVkIG9mZiBvbiB0aGUgU09MIGNvbm5l
Y3Rpb24gYW5kIGNvbnNvbGU/ICBJZiB5b3UgaGF2ZSAiciIgb24gdGhlIGNvbnNvbGU9IGNvbW1h
bmQgKGxpa2UgY29uc29sZT0xMTUyMDBuODFyKSAsIGlmIHRoZSBCTUMgc3RvcHMgdGFraW5nIGNo
YXJhY3RlcnMgeW91IGNhbiBoYW5nIHRoZSBrZXJuZWwuCj4gCj4gWW91IG1pZ2h0IHdhbnQgdG8g
bWFrZSBzdXJlIGdldHR5IGhhcyBSVFMgdHVybmVkIG9mZiwgdG9vLgo+IAo+IFRoZSB0cm91Ymxl
IGlzLCBvZiBjb3Vyc2UsIHRoYXQgeW91IGNhbiBsb3NlIGNoYXJhY3RlcnMgYmVjYXVzZSBvZiBh
IHNsb3cgQk1DLiAgQnV0IGl0J3MgZ2VuZXJhbGx5IGEgYmFkIGlkZWEgdG8gcnVuIGEgY29uc29s
ZSB3aXRoIGZsb3cgY29udHJvbCBlbmFibGVkLgoKU29ycnksIHRoYXQgbWlnaHQgaGF2ZSBiZWVu
IGEgbWlzdW5kZXJzdGFuZGluZzogSeKAmW0gbm90IGNhdGNoaW5nIHRoZSBjcmFzaGVzIGN1cnJl
bnRseSBiZWNhdXNlIGFsbCB0aGUgbWFjaGluZXMgdGhhdCB1c2VkIHRvIGNyYXNoIG5vdyBzZWVt
IHRvIG5vdCB3YW50IHRvIGNyYXNoIGFueW1vcmUuIEkgZ3Vlc3Mgd2XigJlyZSBvbiBhIEhlaXNl
bmJ1ZyBoZXJlLiBHZXR0aW5nIG91dHB1dCBmcm9tIHRoZSBTT0wgd29ya3MgYWJzb2x1dGVseSBm
aW5lLCBzbyBJIGV4cGVjdCB0byBzZWUgYSBrZXJuZWwgY3Jhc2ggaW4gdGhlIFNPTCBvbmNlIGl0
IGhhcHBlbnMuCgpJ4oCZbSBzb21ld2hhdCBzdXNwZWN0aW5nIHRoYXQgd2XigJlsbCBmaW5kIGFu
b3RoZXIgYnVnIHRoYXQgY2F1c2VzIHRob3NlIHNwZWNpZmljIGNyYXNoZXMgbm90IGFwcGVhciBp
biB0aGUgU0VMLCB0aG91Z2gg4oCmIAoKQW5kIHRoZW4gYWdhaW46IG1heWJlIGl04oCZcyBub3Qg
YSBIZWlzZW5idWcsIGJ1dCBtYXliZSB3aGF0ZXZlciBjYXVzZWQgdGhlIGNyYXNoZXMgaGFzIGJl
ZW4gZml4ZWQgaW4gYmV0d2VlbiBhbmQgSeKAmWxsIG5ldmVyIGtub3cg4oCmIDspCgo+IEFzIHdl
4oCZcmUgY29udGludW91c2x5IHVwZGF0aW5nIG91ciBlbnZpcm9ubWVudCBpdCBtaWdodCBhbHNv
IGJlIHRoYXQgd2XigJl2ZSBzdWNjZXNzZnVsbHkgZXZhZGVkIGEga2VybmVsIGJ1ZyB0aGF0IHdh
cyBoYXVudGluZyB1cyDigKYgbWF5YmUg4oCmIDspCj4gPj4gCj4gPj4gSeKAmW0gd29uZGVyaW5n
OiBkb2VzIGFueW9uZSBrbm93IG9mIGEg4oCccHVzaOKAnSBzb2x1dGlvbiB0byBpbnN0cnVjdCB0
aGUgQk1DIChtb3N0bHkgU3VwZXJtaWNybyBpbiBvdXIgY2FzZSkgdG8gcHVzaCBTT0wgb3V0cHV0
IHByb2FjdGl2ZWx5IHRocm91Z2ggc29tZSBwcm90b2NvbCBsaWtlIHN5c2xvZz8gCj4gPiAKPiA+
IFRoZSBTRUwgcHJvYmFibHkgaXNuJ3QgYmlnIG9yIGZhc3QgZW5vdWdoIHRvIHRha2Ugc3lzdGVt
IGxvZ3MuICBZb3UKPiA+IGNvdWxkIGNyZWF0ZSBzb21ldGhpbmcgbGlrZSB0aGlzIGFzIHBhcnQg
b2YgcHJpbnRrLCBidXQgSSBzdXNwZWN0IHRoYXQKPiA+IGl0IHdvdWxkIHF1aWNrbHkgb3ZlcmZs
b3cgdGhlIFNFTC4KPiBZZWFoLCBJIHdhc27igJl0IHRoaW5raW5nIGFib3V0IHRoZSBTRUwgYnV0
IHdvbmRlcmluZyB3aGV0aGVyIHNlcmlhbCBvdXRwdXQgY291bGQgYmUgc2hpcHBlZCBpbiBhIHB1
c2gtbWFubmVyIGZyb20gdGhlIEJNQyB3aXRob3V0IGhhdmluZyB0byBhdHRhY2ggYW5kIGF1dGhl
bnRpY2F0ZS4KPiAKPiBUaGF0IHdvdWxkIHRha2Ugc29tZSB3b3JrIGluIHRoZSBCTUMuCgpUaGF0
4oCZcyB3aGF0IEkgdGhvdWdodC4gTm90IGEgcHJvbWlzaW5nIGF2ZW51ZSBJIGd1ZXNzIOKApiBJ
IHdvdWxkbuKAmXQgZXZlbiBrbm93IHdobyB0byB0YWxrIHRvIHdpdGggYW55IGNoYW5jZSBvZiBz
dWNjZXNzIOKApiA7KQoKPiA+PiBPdGhlcndpc2Ugd2XigJlkIG5lZWQgdG8gc2V0IHVwIGEgY2Vu
dHJhbCBob3N0IHdpdGggcGFzc3dvcmRzIGZvciBkb3plbnMgb2YgaG9zdHMgdG8gcHVsbCB0aGUg
U09MIGZvciBsb2dnaW5nIGFuZCB0aGF0IGRvZXNu4oCZdCBmZWVsIHJpZ2h0IGVpdGhlciDigKYg
LV9fCj4gPiAKPiA+IEkga25vdyBwZW9wbGUgdGhhdCBkbyB0aGlzOyBpdCdzIG5vdCB0ZXJyaWJs
ZS4gIFlvdSBkbyBoYXZlIGFsbCBvZiB5b3VyCj4gPiBJUE1JIHBhc3N3b3JkcyBpbiBvbmUgcGxh
Y2UsIHRoYXQncyB0aGUgYmlnZ2VzdCBpc3N1ZSwgYnV0IElNSE8geW91Cj4gPiBzaG91bGQgYmUg
bW9uaXRvcmluZyB0aGUgb3V0cHV0IG9mIHlvdXIgY29uc29sZXMsIGFueXdheS4KPiBZZWFoLCB0
aGF04oCZcyB3aGF0IEnigJltIHBvbmRlcmluZywgdG9vLiBJTUhPIGl04oCZcyBxdWl0ZSBhIGJp
dCB0ZXJyaWJsZSBhbmQgdGh1cyBJIHdhcyB3b25kZXJpbmcgd2hldGhlciB0aGUgQk1DIG1pZ2h0
IGhhdmUgYSBidWlsdC1pbiBzb2x1dGlvbiB0aGF0IHdvdWxkIHR1cm4gdGhpcyB1cHNpZGUgZG93
biDigKYgYnV0IEkgZ2VzcyBub3QKPiA+IEkgc3VwcG9ydCBhIHByb2dyYW0gY2FsbGVkIHNlcjJu
ZXQgdGhhdCBpcyBjYXBhYmxlIG9mIG1ha2luZyBTT0wKPiA+IGNvbm5lY3Rpb25zLCBsb2dnaW5n
IHRoZSBvdXRwdXQsIGFuZCBhbGxvd2luZyBjb25uZWN0aW9ucyB0byB0aGUKPiA+IGNvbnNvbGUu
ICBUaGF0IHdvdWxkIGJlIGEgcHJldHR5IGNvbXBsaWNhdGVkIHNldHVwLCBidXQgSSBjYW4gaGVs
cCB5b3UKPiA+IHdpdGggaXQsIGlmIHlvdSBsaWtlLgo+IFRoZSBtdWx0aXBsZXhpbmcgc291bmRz
IGdyZWF0LiBJ4oCZdmUgYnVpbHQgYSBzbWFsbCBzaGVsbCB3cmFwcGVyIHRvIG1hbmFnZSBTT0wg
Y29ubmVjdGlvbnMgYW5kIHRoZWlyIGxvZ2dpbmcgKGFuZCByZWNvbm5lY3RpbmcgaWYgdGhlIEJN
QyBhY3RzIHVwKSB3aGljaCB3b3JrcyBmb3Igbm93Lgo+IEZyb20gYSBkZXNpZ24gcGVyc3BlY3Rp
dmUgSeKAmWQgcmVhbGx5IGxvdmUgdGhpcyB0byBiZSBwdXNoLWJhc2VkLiBJIHJlc2VhcmNoZWQg
dGhlIGRtdGYgc2l0ZSwgYnV0IGRpZG7igJl0IGZpbmQgYW55dGhpbmcgdGhlcmUgZWl0aGVyIOKA
piBJIGd1ZXNzIEnigJltIHRoZSBvZGQtb25lIG91dCB0aGVuIOKApgo+IE5vIGlkZWEuICBTbyB3
aXRoIHlvdXIgbGl0dGxlIHdyYXBwZXIgY29ubmVjdGVkIGV2ZXJ5dGhpbmcgc2VlbXMgdG8gd29y
ayBvay4KPiAKPiBPdXRzaWRlIG9mIHRoZSBmbG93IGNvbnRyb2wgdGhpbmcsIEkgaGF2ZSBubyBp
ZGVhLgoKVGhhbmtzIGZvciB0aGUgaW5wdXQsIHRob3VnaCEgSSB3YXNu4oCZdCBzdXJlIEkgd2Fz
IG1pc3Npbmcgc29tZXRoaW5nIG9idmlvdXMuIEnigJlsbCBsZXQgeW91IGtub3cgaWYgSSBzaG91
bGQgZXZlciBmaW5kIG91dCB3aGF04oCZcyBnb2luZyBvbiBoZXJlIOKApiAKCkNocmlzdGlhbgoK
LS0gCkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5
NDAxIDAKRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9m
bHlpbmdjaXJjdXMuaW8KTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxl
KSDCtyBEZXV0c2NobGFuZApIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJl
cjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Bl
cgo=
