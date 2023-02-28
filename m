Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D9C6A5D73
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Feb 2023 17:48:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pX39i-0005Mk-MA;
	Tue, 28 Feb 2023 16:48:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1pX39h-0005Md-Js
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 16:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dDUaMhIOPY2VCjO1Aq3vbLDT9CJfeDMszF9NAk9B8Jc=; b=GkNwdym9/hZeh0iNGV57hMiW7i
 /8qfKRzkI3JrTRUJD4nOOOCSNAInc54HGHBnORT2/hvH1ZE4wuPwr2OeQy1wQYOmPwbxAyMG2wgqO
 wfaiKSgoMdXuvs07xC3NcCs+YbnAXgCqRsc7Gi1u1xe9kW+4vXIPPyA2dCKLGC+Liw3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dDUaMhIOPY2VCjO1Aq3vbLDT9CJfeDMszF9NAk9B8Jc=; b=OXkvGHhqPCrfu1VA8HjLIIXr68
 tKem8yw0hoSyz5jAkSAQzw2rPia0xTcCq/cuLB97fp5iLehOClbUL8+3cg9Vv8/oEmgNq1GzTst6R
 72L0RHBaXl5woHEnzsX/6OY3lXyi/l9o00bUssQGSRlbLAA/k3woF3FKFzNe9+RT02mU=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pX39c-007ei4-Ge for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 16:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1677602907;
 bh=dDUaMhIOPY2VCjO1Aq3vbLDT9CJfeDMszF9NAk9B8Jc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=LunTYEWVExtiiWgK1pa2qOO175/Hl+VqwS7zlgtggdYkxuV0VSUacTPDm+TuVsurW
 EDbY2KybkLbrHtOkwcP3eGCm7S13Y9KYwPW8+LWAu7JyUZ/VVJqv8zRpaICQI7jXOd
 Mg2T+c0tUmO9w6WwYeOLLvf80+lwY+AFJNJ+xe9Q=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
In-Reply-To: <Y/4tpHxe0irCRxjK@minyard.net>
Date: Tue, 28 Feb 2023 17:48:07 +0100
Message-Id: <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, > On 28. Feb 2023, at 17:36, Corey Minyard <minyard@acm.org>
    wrote: > > On Tue, Feb 28, 2023 at 02:53:12PM +0100, Christian Theune via
    Openipmi-developer wrote: >> Hi, >> >> I’ve been trying to debu [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pX39c-007ei4-Ge
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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

SGksCgo+IE9uIDI4LiBGZWIgMjAyMywgYXQgMTc6MzYsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRA
YWNtLm9yZz4gd3JvdGU6Cj4gCj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDI6NTM6MTJQTSAr
MDEwMCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+PiBI
aSwKPj4gCj4+IEnigJl2ZSBiZWVuIHRyeWluZyB0byBkZWJ1ZyB0aGUgUEFOSUMgYW5kIE9FTSBz
dHJpbmcgaGFuZGxpbmcgYW5kIGFtIHJ1bm5pbmcgb3V0IG9mIGlkZWFzIHdoZXRoZXIgdGhpcyBp
cyBhIGJ1ZyBvciB3aGV0aGVyIHNvbWV0aGluZyBzbyBzdWJ0bGUgaGFzIGNoYW5nZWQgaW4gbXkg
Y29uZmlnIHRoYXQgSeKAmW0ganVzdCBub3Qgc2VlaW5nIGl0Lgo+PiAKPj4gKE5vdGU6IEnigJlt
IHdpbGxpbmcgdG8gcGF5IGZvciBjb25zdWx0aW5nLikKPiAKPiBQcm9iYWJseSBub3QgbmVjZXNz
YXJ5LgoKVGhhbmtzISBUaGUgb2ZmZXIgYWx3YXlzIHN0YW5kcy4gSWYgd2Ugc2hvdWxkIGV2ZXIg
bWVldCBJ4oCZbSBhbHNvIGFibGUgdG8gcGF5IGluIGJldmVyYWdlcy4gOykKCj4+IEkgaGF2ZSBt
YWNoaW5lcyB0aGF0IHdl4oCZdmUgbW92ZWQgZnJvbSBhbiBvbGRlciBzZXR1cCAoR2VudG9vLCAo
bW9zdGx5KSB2YW5pbGxhIGtlcm5lbCA0LjE5LjE1NykgdG8gYSBuZXdlciBzZXR1cCAoTml4T1Ms
IChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDUuMTAuMTU5KSBhbmQgSeKAmW0gbm93IGV4cGVyaWVu
Y2luZyBjcmFzaGVzIHRoYXQgc2VlbSB0byBiZSBrZXJuZWwgcGFuaWNzIGJ1dCBkbyBub3QgZ2V0
IHRoZSB1c3VhbCBtZXNzYWdlcyBpbiB0aGUgSVBNSSBTRUwuCj4gCj4gSSBqdXN0IHRlc3RlZCBv
biBzdG9jayA1LjEwLjE1OSBhbmQgaXQgd29ya2VkIHdpdGhvdXQgaXNzdWUuICBFdmVyeXRoaW5n
Cj4geW91IGhhdmUgYmVsb3cgbG9va3Mgb2suCj4gCj4gQ2FuIHlvdSB0ZXN0IGJ5IGNhdXNpbmcg
YSBjcmFzaCB3aXRoOgo+IAo+ICBlY2hvIGMgPi9wcm9jL3N5c3JxLXRyaWdnZXIKPiAKPiBhbmQg
c2VlIGlmIGl0IHdvcmtzPwoKWWVhaCwgYWxyZWFkeSB0cmllZCB0aGF0IGFuZCB1bmZvcnR1bmF0
ZWx5IHRoYXQgX2RvZXNu4oCZdF8gd29yay4KCj4gSXQgc291bmRzIGxpa2UgeW91IGFyZSBoYXZp
bmcgc29tZSB0eXBlIG9mIGNyYXNoIHRoYXQgeW91IHdvdWxkIG5vcm1hbGx5Cj4gdXNlIHRoZSBJ
UE1JIGxvZ3MgdG8gZGVidWcuICBIb3dldmVyLCB0aGV5IGFyZW4ndCBwZXJmZWN0LCB0aGUgc3lz
dGVtCj4gaGFzIHRvIHN0YXkgdXAgbG9uZyBlbm91Z2ggdG8gZ2V0IHRoZW0gaW50byB0aGUgZXZl
bnQgbG9nLgoKSSB0aGluayB0aGV5IGFyZSBzdGF5aW5nIHVwIGxvbmcgZW5vdWdoIGJlY2F1c2Ug
YSBwYW5pYyB0cmlnZ2VycyB0aGUgMjU1IHNlY29uZCBidW1wIGluIHRoZSB3YXRjaGRvZyBhbmQg
b25seSB0aGVuIHBhc3Mgb24uIEhvd2V2ZXIsIGnigJl2ZSBhbHNvIG5vdGljZWQgdGhhdCB0aGUg
a2VybmVsIF9zaG91bGRfIGJlIHJlYm9vdGluZyBhZnRlciBhIHBhbmljIG11Y2ggZmFzdGVyIChh
bmQgbm90IHJlbHkgb24gdGhlIHdhdGNoZG9nKSBhbmQgdGhhdCBkb2VzbuKAmXQgaGFwcGVuIGVp
dGhlci4gKFNvcnJ5IHRoaXMganVzdCBwb3BwZWQgZnJvbSB0aGUgYmFjayBvZiBteSBoZWFkKS4K
Cj4gSW4gdGhpcyBzaXR1YXRpb24sIGdldHRpbmcgYSBzZXJpYWwgY29uc29sZSAocHJvYmFibHkg
dGhyb3VnaCBJUE1JCj4gU2VyaWFsIG92ZXIgTEFOKSBhbmQgZ2V0dGluZyB0aGUgY29uc29sZSBv
dXRwdXQgb24gYSBjcmFzaCBpcyBwcm9iYWJseQo+IHlvdXIgYmVzdCBvcHRpb24uICBZb3UgY2Fu
IHVzZSBpcG1pdG9vbCBmb3IgdGhpcywgb3IgSSBoYXZlIGEgbGlicmFyeQo+IHRoYXQgaXMgYWJs
ZSB0byBtYWtlIGNvbm5lY3Rpb25zIHRvIHNlcmlhbCBwb3J0cywgaW5jbHVkaW5nIHRocm91Z2gg
SVBNSQo+IFNvTC4KCll1cC4gQmVlbiB0aGVyZSwgdG9vLiA6KQoKVW5mb3J0dW5hdGVseSB3ZeKA
mXJlIGN1cnJlbnRseSBjaGFzaW5nIHNvbWV0aGluZyB0aGF0IHBvcHMgdXAgdmVyeSByYW5kb21s
eSBvbiBzb21ld2hhdCBvZGQgbWFjaGluZXMgYW5kIEkgYWxzbyBoYXZlIHRoZSBmZWVsaW5nIHRo
YXQgaXTigJlzIHN5c3RlbWF0aWNhbGx5IGJyb2tlbiByaWdodCBub3cgKGFzIHRoZSDigJxlY2hv
IGPigJ0gZG9lc27igJl0IHdvcmspLgoKVGhhbmtzIGEgbG90LApDaHJpc3RpYW4KCi0tIApDaHJp
c3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAwCkZs
eWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8vZmx5aW5nY2ly
Y3VzLmlvCkxlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFsZSkgwrcgRGV1
dHNjaGxhbmQKSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlz
dGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
