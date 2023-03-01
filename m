Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FECE6A71B2
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Mar 2023 18:01:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXPp0-0004yS-CZ;
	Wed, 01 Mar 2023 17:00:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1pXPoz-0004yL-8L
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 17:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MEoNzyCWAfxDMNrO7gxqH4GfpeC3FOzKaIoQAFhMkeU=; b=e5xC6kH9/RkM3xqriOQSURMgkd
 TScL1t+yhPp+vKs4Bn1DUiOPrO7WOFVZJeM6oSZQ/BZFVQTKSgKDkH9aJ4IqhK/c4jTP9VZ+RA6fL
 8rfiAoU8Vwk1fOrjn3pMN/uafr0AiVnuNw8cKGHZHzWyxMdCV/WMPQqw8y0mrQqQqrQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MEoNzyCWAfxDMNrO7gxqH4GfpeC3FOzKaIoQAFhMkeU=; b=LYSV4mjtckugigJ2EA/lrGEYO3
 KgsM4fhgBplGuDjnDk0AsmJ2q89yDpIgT7s6Bdw//0UeaWmX1a9gQHZ1jCTX5X5UnJ/+j1/xmjT+B
 NgDVJPjXD1cWc/TFojfEGn5Gsdrkw+mL+NzKhBpPZYxsSWA6bKp+8PfifqC3z7JIADHw=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXPos-0003Pd-KS for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 17:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1677690028;
 bh=MEoNzyCWAfxDMNrO7gxqH4GfpeC3FOzKaIoQAFhMkeU=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=j2MPQroH1/yMHKCAFr63fh7wG5ZAQSPL5aHjB9O9CM0AwvV21Bf3GpWwBX+uwJmXT
 9E95NqEUnKSVU23N4njcG2ckL5X+C6+YoDDKzHUO+LvsrGCN1Okq3QRtI/92YrrlPp
 Ya/h4m2dJ8RfB++vuEKbHH4qJdMU5or4egJLXTSE=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
In-Reply-To: <Y/+ETg3dpg+Ui48+@minyard.net>
Date: Wed, 1 Mar 2023 18:00:07 +0100
Message-Id: <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
 <Y/+ETg3dpg+Ui48+@minyard.net>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  I’m going to actually attach a serial console to watch the
    “echo c” panic, maybe that gives _some_ indication. Otherwise: I can
   quickly run patches on the kernel there to try out things. (And the funding
    offer still stands.) 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: flyingcircus.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pXPos-0003Pd-KS
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

SeKAmW0gZ29pbmcgdG8gYWN0dWFsbHkgYXR0YWNoIGEgc2VyaWFsIGNvbnNvbGUgdG8gd2F0Y2gg
dGhlIOKAnGVjaG8gY+KAnSBwYW5pYywgbWF5YmUgdGhhdCBnaXZlcyBfc29tZV8gaW5kaWNhdGlv
bi4KCk90aGVyd2lzZTogSSBjYW4gcXVpY2tseSBydW4gcGF0Y2hlcyBvbiB0aGUga2VybmVsIHRo
ZXJlIHRvIHRyeSBvdXQgdGhpbmdzLiAoQW5kIHRoZSBmdW5kaW5nIG9mZmVyIHN0aWxsIHN0YW5k
cy4pCgpDaHJpc3RpYW4KCj4gT24gMS4gTWFyIDIwMjMsIGF0IDE3OjU4LCBDb3JleSBNaW55YXJk
IDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+IAo+IE9uIFR1ZSwgRmViIDI4LCAyMDIzIGF0IDA2
OjM2OjE3UE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUgd3JvdGU6Cj4+IFRoYW5rcywgYm90aCBt
YWNoaW5lcyByZXBvcnQ6Cj4+IAo+PiAjIGNhdCAvc3lzL21vZHVsZS9pcG1pX21zZ2hhbmRsZXIv
cGFyYW1ldGVycy9wYW5pY19vcAo+PiBzdHJpbmcKPiAKPiBBdCB0aGlzIHBvaW50LCBJIGhhdmUg
bm8gaWRlYS4gIEknZCBoYXZlIHRvIHN0YXJ0IGFkZGluZyBwcmludGtzIGludG8KPiB0aGUgY29k
ZSBhbmQgY2F1c2UgY3Jhc2hlcyB0byBzZWUgd2hhdCBpcyBoYXBwaW5nLgo+IAo+IE1heWJlIHNv
bWV0aGluZyBpcyBnZXR0aW5nIGluIHRoZSB3YXkgb2YgdGhlIHBhbmljIG5vdGlmaWVycyBhbmQg
ZG9pbmcKPiBzb21ldGhpbmcgdG8gcHJldmVudCB0aGUgSVBNSSBkcml2ZXIgZnJvbSB3b3JraW5n
Lgo+IAo+IC1jb3JleQo+IAo+PiAKPj4gCj4+PiBPbiAyOC4gRmViIDIwMjMsIGF0IDE4OjA0LCBD
b3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+Pj4gCj4+PiBPaCwgSSBmb3Jn
b3QuICBZb3UgY2FuIGxvb2sgYXQgcGFuaWNfb3AgaW4gL3N5cy9tb2R1bGUvaXBtaV9tc2doYW5k
bGVyL3BhcmFtZXRlcnMvcGFuaWNfb3AKPj4+IAo+Pj4gLWNvcmV5Cj4+PiAKPj4+IE9uIFR1ZSwg
RmViIDI4LCAyMDIzIGF0IDA1OjQ4OjA3UE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUgdmlhIE9w
ZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPj4+PiBIaSwKPj4+PiAKPj4+Pj4gT24gMjguIEZlYiAy
MDIzLCBhdCAxNzozNiwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPj4+
Pj4gCj4+Pj4+IE9uIFR1ZSwgRmViIDI4LCAyMDIzIGF0IDAyOjUzOjEyUE0gKzAxMDAsIENocmlz
dGlhbiBUaGV1bmUgdmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPj4+Pj4+IEhpLAo+Pj4+
Pj4gCj4+Pj4+PiBJ4oCZdmUgYmVlbiB0cnlpbmcgdG8gZGVidWcgdGhlIFBBTklDIGFuZCBPRU0g
c3RyaW5nIGhhbmRsaW5nIGFuZCBhbSBydW5uaW5nIG91dCBvZiBpZGVhcyB3aGV0aGVyIHRoaXMg
aXMgYSBidWcgb3Igd2hldGhlciBzb21ldGhpbmcgc28gc3VidGxlIGhhcyBjaGFuZ2VkIGluIG15
IGNvbmZpZyB0aGF0IEnigJltIGp1c3Qgbm90IHNlZWluZyBpdC4KPj4+Pj4+IAo+Pj4+Pj4gKE5v
dGU6IEnigJltIHdpbGxpbmcgdG8gcGF5IGZvciBjb25zdWx0aW5nLikKPj4+Pj4gCj4+Pj4+IFBy
b2JhYmx5IG5vdCBuZWNlc3NhcnkuCj4+Pj4gCj4+Pj4gVGhhbmtzISBUaGUgb2ZmZXIgYWx3YXlz
IHN0YW5kcy4gSWYgd2Ugc2hvdWxkIGV2ZXIgbWVldCBJ4oCZbSBhbHNvIGFibGUgdG8gcGF5IGlu
IGJldmVyYWdlcy4gOykKPj4+PiAKPj4+Pj4+IEkgaGF2ZSBtYWNoaW5lcyB0aGF0IHdl4oCZdmUg
bW92ZWQgZnJvbSBhbiBvbGRlciBzZXR1cCAoR2VudG9vLCAobW9zdGx5KSB2YW5pbGxhIGtlcm5l
bCA0LjE5LjE1NykgdG8gYSBuZXdlciBzZXR1cCAoTml4T1MsIChtb3N0bHkpIHZhbmlsbGEga2Vy
bmVsIDUuMTAuMTU5KSBhbmQgSeKAmW0gbm93IGV4cGVyaWVuY2luZyBjcmFzaGVzIHRoYXQgc2Vl
bSB0byBiZSBrZXJuZWwgcGFuaWNzIGJ1dCBkbyBub3QgZ2V0IHRoZSB1c3VhbCBtZXNzYWdlcyBp
biB0aGUgSVBNSSBTRUwuCj4+Pj4+IAo+Pj4+PiBJIGp1c3QgdGVzdGVkIG9uIHN0b2NrIDUuMTAu
MTU5IGFuZCBpdCB3b3JrZWQgd2l0aG91dCBpc3N1ZS4gIEV2ZXJ5dGhpbmcKPj4+Pj4geW91IGhh
dmUgYmVsb3cgbG9va3Mgb2suCj4+Pj4+IAo+Pj4+PiBDYW4geW91IHRlc3QgYnkgY2F1c2luZyBh
IGNyYXNoIHdpdGg6Cj4+Pj4+IAo+Pj4+PiBlY2hvIGMgPi9wcm9jL3N5c3JxLXRyaWdnZXIKPj4+
Pj4gCj4+Pj4+IGFuZCBzZWUgaWYgaXQgd29ya3M/Cj4+Pj4gCj4+Pj4gWWVhaCwgYWxyZWFkeSB0
cmllZCB0aGF0IGFuZCB1bmZvcnR1bmF0ZWx5IHRoYXQgX2RvZXNu4oCZdF8gd29yay4KPj4+PiAK
Pj4+Pj4gSXQgc291bmRzIGxpa2UgeW91IGFyZSBoYXZpbmcgc29tZSB0eXBlIG9mIGNyYXNoIHRo
YXQgeW91IHdvdWxkIG5vcm1hbGx5Cj4+Pj4+IHVzZSB0aGUgSVBNSSBsb2dzIHRvIGRlYnVnLiAg
SG93ZXZlciwgdGhleSBhcmVuJ3QgcGVyZmVjdCwgdGhlIHN5c3RlbQo+Pj4+PiBoYXMgdG8gc3Rh
eSB1cCBsb25nIGVub3VnaCB0byBnZXQgdGhlbSBpbnRvIHRoZSBldmVudCBsb2cuCj4+Pj4gCj4+
Pj4gSSB0aGluayB0aGV5IGFyZSBzdGF5aW5nIHVwIGxvbmcgZW5vdWdoIGJlY2F1c2UgYSBwYW5p
YyB0cmlnZ2VycyB0aGUgMjU1IHNlY29uZCBidW1wIGluIHRoZSB3YXRjaGRvZyBhbmQgb25seSB0
aGVuIHBhc3Mgb24uIEhvd2V2ZXIsIGnigJl2ZSBhbHNvIG5vdGljZWQgdGhhdCB0aGUga2VybmVs
IF9zaG91bGRfIGJlIHJlYm9vdGluZyBhZnRlciBhIHBhbmljIG11Y2ggZmFzdGVyIChhbmQgbm90
IHJlbHkgb24gdGhlIHdhdGNoZG9nKSBhbmQgdGhhdCBkb2VzbuKAmXQgaGFwcGVuIGVpdGhlci4g
KFNvcnJ5IHRoaXMganVzdCBwb3BwZWQgZnJvbSB0aGUgYmFjayBvZiBteSBoZWFkKS4KPj4+PiAK
Pj4+Pj4gSW4gdGhpcyBzaXR1YXRpb24sIGdldHRpbmcgYSBzZXJpYWwgY29uc29sZSAocHJvYmFi
bHkgdGhyb3VnaCBJUE1JCj4+Pj4+IFNlcmlhbCBvdmVyIExBTikgYW5kIGdldHRpbmcgdGhlIGNv
bnNvbGUgb3V0cHV0IG9uIGEgY3Jhc2ggaXMgcHJvYmFibHkKPj4+Pj4geW91ciBiZXN0IG9wdGlv
bi4gIFlvdSBjYW4gdXNlIGlwbWl0b29sIGZvciB0aGlzLCBvciBJIGhhdmUgYSBsaWJyYXJ5Cj4+
Pj4+IHRoYXQgaXMgYWJsZSB0byBtYWtlIGNvbm5lY3Rpb25zIHRvIHNlcmlhbCBwb3J0cywgaW5j
bHVkaW5nIHRocm91Z2ggSVBNSQo+Pj4+PiBTb0wuCj4+Pj4gCj4+Pj4gWXVwLiBCZWVuIHRoZXJl
LCB0b28uIDopCj4+Pj4gCj4+Pj4gVW5mb3J0dW5hdGVseSB3ZeKAmXJlIGN1cnJlbnRseSBjaGFz
aW5nIHNvbWV0aGluZyB0aGF0IHBvcHMgdXAgdmVyeSByYW5kb21seSBvbiBzb21ld2hhdCBvZGQg
bWFjaGluZXMgYW5kIEkgYWxzbyBoYXZlIHRoZSBmZWVsaW5nIHRoYXQgaXTigJlzIHN5c3RlbWF0
aWNhbGx5IGJyb2tlbiByaWdodCBub3cgKGFzIHRoZSDigJxlY2hvIGPigJ0gZG9lc27igJl0IHdv
cmspLgo+Pj4+IAo+Pj4+IFRoYW5rcyBhIGxvdCwKPj4+PiBDaHJpc3RpYW4KPj4+PiAKPj4+PiAt
LSAKPj4+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1
IDIxOTQwMSAwCj4+Pj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcg
aHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPj4+PiBMZWlwemlnZXIgU3RyLiA3MC83MSDCtyAwNjEw
OCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4+Pj4gSFIgU3RlbmRhbCBIUkIgMjExNjkg
wrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2Ru
aWNrCj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+PiBPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Cj4+
Pj4gT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+Pj4+IGh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo+
PiAKPj4gTGllYmUgR3LDvMOfZSwKPj4gQ2hyaXN0aWFuIFRoZXVuZQo+PiAKPj4gLS0gCj4+IENo
cmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAK
Pj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlp
bmdjaXJjdXMuaW8KPj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxl
KSDCtyBEZXV0c2NobGFuZAo+PiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8
aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPj4gCgpMaWViZSBH
csO8w59lLApDaHJpc3RpYW4gVGhldW5lCgotLSAKQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlp
bmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMApGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9w
ZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwpMZWlwemlnZXIgU3RyLiA3
MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCkhSIFN0ZW5kYWwgSFJC
IDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4g
WmFncm9kbmljawoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
