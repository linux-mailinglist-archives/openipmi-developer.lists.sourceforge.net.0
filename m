Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A227B6009
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 06:48:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnXKp-0007Oc-FJ;
	Tue, 03 Oct 2023 04:48:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1qnXKn-0007OV-G7
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 04:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bQ+RMIcX//1BFhHTwVAhPytO+gf+aJmCuLN74bukp+Q=; b=VFeQRGgMo1J3eDSpmGgg7qsHi/
 pOE9MAF6LjBwfWV+T9oCjFu0g+nG38Ow7yTXIQTMtEQSlkMB6jJYKk5HEYj0cY06Ti6MwXraA2IEI
 vYe0beNhQ/qrN1f/2vRDtp7Dx2gxm3s2KkcOfXFZwDFT/t6Uy/Fxg8Iuw7z6jv7MMslk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bQ+RMIcX//1BFhHTwVAhPytO+gf+aJmCuLN74bukp+Q=; b=HTmdNgJxYOFrC1rNxg/ZX8NiJL
 Feklb/6LcgTMX/RvG0ynjOc/2uZQrXgQVrAMK3lssfNdYw/gxDZCNs+ZIyITkW+WpHa7CD3RUmIYR
 YD2c4b+Y4J2knn+j4lDdMNAU0f2AbbvKXwz4zijZqcMoSNjQGeWDCCzJdEmWwuOcZ2mA=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnXKi-00GwzK-AS for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Oct 2023 04:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1696308490;
 bh=bQ+RMIcX//1BFhHTwVAhPytO+gf+aJmCuLN74bukp+Q=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=pEq0r0jvGHaMrxWIPPxJgWk8OnURdW5dqpBPNEs0+Vm1llxtyjPdzt3PYuW9CFiZC
 5Z91j4WgUsJC0+X3FMkx8pllIsFR0jT6FxDInZwUbLrjo9+Sc4eABYH+XC5eyv5JDj
 54WCZ7XIzRyoBPF7Dpgb/OgFJJAthJPBc9NIbdMA=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
In-Reply-To: <ZRrc7Eet4EKbSro6@mail.minyard.net>
Date: Tue, 3 Oct 2023 06:47:49 +0200
Message-Id: <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey, > On 2. Oct 2023, at 17:08,
 Corey Minyard <minyard@acm.org>
 wrote: > > On Mon, Oct 02, 2023 at 08:05:09AM +0200, Christian Theune wrote:
 > > ...snip... > >>>> Can you not get kernel coredumps? >>> Unf [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qnXKi-00GwzK-AS
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

SGV5LAoKPiBPbiAyLiBPY3QgMjAyMywgYXQgMTc6MDgsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRA
YWNtLm9yZz4gd3JvdGU6Cj4gCj4gT24gTW9uLCBPY3QgMDIsIDIwMjMgYXQgMDg6MDU6MDlBTSAr
MDIwMCwgQ2hyaXN0aWFuIFRoZXVuZSB3cm90ZToKPiAKPiAuLi5zbmlwLi4uCj4gCj4+Pj4gQ2Fu
IHlvdSBub3QgZ2V0IGtlcm5lbCBjb3JlZHVtcHM/Cj4+PiBVbmZvcnR1bmF0ZWx5IG5vIGFuZCBJ
IHN0aWxsIGhhdmUgYWJzb2x1dGVseSBub3cgaWRlYSB3aHkgdGhlIHdhdGNoZG9nIHRyaWdnZXJz
4oCmIEkgaGF2ZSBjdXJyZW50bHkgYXR0YWNoZWQgZG96ZW5zIG9mIHNlcnZlcnMgdGhhdCBhcmUg
cGFydCBvZiBhIG15c3RlcmlvdXMgc2VyaWVzIG9mIGNyYXNoZXMgYnV0IHRoZXkgZGlkbuKAmXQg
Y3Jhc2ggYWZ0ZXIgSSBhdHRhY2hlZCB0aGUgU09MIGNvbnRpbnVvdXNseS4gSnVzdCBteSBraW5k
IG9mIGx1Y2sgSSBndWVzcyDigKYgOykKPj4+IAo+Pj4gSXQgbWlnaHQgYmUgYSBjbHVlLiAgQ2Fu
IHlvdSBtYWtlIHN1cmUgZmxvdy1jb250cm9sIGlzIHR1cm5lZCBvZmYgb24gdGhlIFNPTCBjb25u
ZWN0aW9uIGFuZCBjb25zb2xlPyAgSWYgeW91IGhhdmUgInIiIG9uIHRoZSBjb25zb2xlPSBjb21t
YW5kIChsaWtlIGNvbnNvbGU9MTE1MjAwbjgxcikgLCBpZiB0aGUgQk1DIHN0b3BzIHRha2luZyBj
aGFyYWN0ZXJzIHlvdSBjYW4gaGFuZyB0aGUga2VybmVsLgo+Pj4gCj4+PiBZb3UgbWlnaHQgd2Fu
dCB0byBtYWtlIHN1cmUgZ2V0dHkgaGFzIFJUUyB0dXJuZWQgb2ZmLCB0b28uCj4+PiAKPj4+IFRo
ZSB0cm91YmxlIGlzLCBvZiBjb3Vyc2UsIHRoYXQgeW91IGNhbiBsb3NlIGNoYXJhY3RlcnMgYmVj
YXVzZSBvZiBhIHNsb3cgQk1DLiAgQnV0IGl0J3MgZ2VuZXJhbGx5IGEgYmFkIGlkZWEgdG8gcnVu
IGEgY29uc29sZSB3aXRoIGZsb3cgY29udHJvbCBlbmFibGVkLgo+PiAKPj4gU29ycnksIHRoYXQg
bWlnaHQgaGF2ZSBiZWVuIGEgbWlzdW5kZXJzdGFuZGluZzogSeKAmW0gbm90IGNhdGNoaW5nIHRo
ZSBjcmFzaGVzIGN1cnJlbnRseSBiZWNhdXNlIGFsbCB0aGUgbWFjaGluZXMgdGhhdCB1c2VkIHRv
IGNyYXNoIG5vdyBzZWVtIHRvIG5vdCB3YW50IHRvIGNyYXNoIGFueW1vcmUuIEkgZ3Vlc3Mgd2Xi
gJlyZSBvbiBhIEhlaXNlbmJ1ZyBoZXJlLiBHZXR0aW5nIG91dHB1dCBmcm9tIHRoZSBTT0wgd29y
a3MgYWJzb2x1dGVseSBmaW5lLCBzbyBJIGV4cGVjdCB0byBzZWUgYSBrZXJuZWwgY3Jhc2ggaW4g
dGhlIFNPTCBvbmNlIGl0IGhhcHBlbnMuCj4+IAo+PiBJ4oCZbSBzb21ld2hhdCBzdXNwZWN0aW5n
IHRoYXQgd2XigJlsbCBmaW5kIGFub3RoZXIgYnVnIHRoYXQgY2F1c2VzIHRob3NlIHNwZWNpZmlj
IGNyYXNoZXMgbm90IGFwcGVhciBpbiB0aGUgU0VMLCB0aG91Z2gg4oCmIAo+PiAKPj4gQW5kIHRo
ZW4gYWdhaW46IG1heWJlIGl04oCZcyBub3QgYSBIZWlzZW5idWcsIGJ1dCBtYXliZSB3aGF0ZXZl
ciBjYXVzZWQgdGhlIGNyYXNoZXMgaGFzIGJlZW4gZml4ZWQgaW4gYmV0d2VlbiBhbmQgSeKAmWxs
IG5ldmVyIGtub3cg4oCmIDspCj4+IAo+IAo+IEkgdW5kZXJzdG9vZC4gIEknbSBzYXlpbmcgdGhh
dCBtYXliZSB0aGUgbWFjaGluZXMgYXJlbid0IGNyYXNoaW5nIGFueQo+IG1vcmUgKmJlY2F1c2Uq
IHlvdSBhcmUgbW9uaXRvcmluZyB0aGVtIHdpdGggU09MLgoKT29vb29vb2guIEnigJltIGdsYWQg
d2UgdG9vayB0aGlzIGRldG91ciAtIEkga25ldyBzb21ldGhpbmcgd2FzIG9mZiwgYnV0IEkgd2Fz
IHRoZSBvbmUgbWlzdW5kZXJzdGFuZGluZy4gVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8g
ZXhwbGFpbiBpdCBhZ2FpbiEgSSB3YXMgYSBiaXQgc3R1Y2sgb24gdGhlIOKAnHdlbGwgaXTigJlz
IGEgSGVpc2VuYnVnIHRoZW7igJ0gYnV0IGRpZG7igJl0IGdldCB0aGF0IGl0IHdhcyBsaXRlcmFs
bHkgc2/igKYgCgo+IFBlcmhhcHMgYSBsb3Qgb2Yga2VybmVsIG91dHB1dCBjb21lcyBvdXQgYWxs
IGF0IG9uY2UsIGl0IGdldHMgZmxvdwo+IGNvbnRyb2xsZWQgYnkgdGhlIEJNQywgdGhlIGtlcm5l
bCBoYW5ncyB3YWl0aW5nIGZvciBwcmludGsgb3V0cHV0LCBhbmQKPiB0aGUgd2F0Y2hkb2cgdGhl
biBnb2VzIG9mZi4gIE5ld2VyIGtlcm5lbHMgaGF2ZSBmaXhlcyB0byBhdm9pZCB0aGlzCj4gcHJv
YmxlbSwgYnV0IG9sZGVyIG9uZXMgZG9uJ3QuCj4gCj4gVGhlcmUgd291bGQgYmUgbm8gT1MgY3Jh
c2gsIG5vIFNFTCBvdXRwdXQsIG5vIGNvcmVkdW1wLCBqdXN0IGEgd2F0Y2hkb2cKPiByZWJvb3Qu
CiAKVW5kZXJzdG9vZC4gV2hhdCB3b3VsZCBiZSBhIG5ld2VyIGtlcm5lbD8gV2XigJlyZSBydW5u
aW5nIDUuMTAoLjE5MCspIGF0IHRoZSBtb21lbnQuCgpUaGUgaW50ZXJlc3RpbmcgcGFydCBoZXJl
IGlzIHRoYXQgd2UgaGF2ZSBiZWVuIGxvZ2dpbmcgdG8gdGhlIHNlcmlhbCBjb25zb2xlIHdpdGhv
dXQgYW55dGhpbmcgYXR0YWNoZWQgbm9ybWFsbHkKZm9yIGEgbG9uZyBsb25nIHRpbWUgKHRoaW5r
OiAxMCB5ZWFycyBwbHVzKSBzbyB0aGVyZSBpcyBzdGlsbCBhIGJpdCBvZiBkb3VidCBhcyB0aGlz
IHN0YXJ0ZWQgdG8gY3JlZXAgdXAgb25seSByZWNlbnRseS4KCj4gSWYgeW91IHR1cm4gb2ZmIHRo
ZSBTT0wgbW9uaXRvcmluZyBhbmQgdGhlIHByb2JsZW0gY29tZXMgYmFjaywgdGhhdAo+IHdvdWxk
IGJlIGEgcHJldHR5IGdvb2QgaW5kaWNhdGlvbiB0aGF0IHNvbWV0aGluZyBsaWtlIHRoYXQgaXMg
aGFwcGVuaW5nLgo+IFVuZm9ydHVuYXRlbHksIGl0J3MgaGFyZCB0byBkZWJ1ZyBiZWNhdXNlIHlv
dSBjYW4ndCBnZXQgaW5mbyBmcm9tIHlvdXIKPiBwcmltYXJ5IGRlYnVnZ2luZyBpbnRlcmZhY2Uu
CgpZZWFoLiBUaGF04oCZcyBzb21ldGhpbmcgSeKAmWxsIGRpc2N1c3Mgd2l0aCBteSB0ZWFtLiBJ
IG9yaWdpbmFsbHkgaW50ZW5kZWQgdG8gdHVybiBvZmYgdGhlIGNvbnRpbnVvdXMgU09MIG1vbml0
b3JpbmcgYnV0IGFmdGVyIHRoaXMgZ29vc2UgY2hhc2UgSeKAmW0gc29tZXdoYXQgd2lsbGluZyB0
byBtYWtlIGl0IGEgcmVndWxhciB0aGluZy4KCj4gT2YgY291cnNlLCB0aGUgYnVnIG1heSBoYXZl
IGJlZW4gZml4ZWQgYnkgYSBrZXJuZWwgb3IgYXBwIHVwZ3JhZGUsIHRvby4KPiBMaWtlIHlvdSBz
YXkgd2l0aCB0aGluZ3MgbGlrZSB0aGlzLCB5b3UgbWF5IG5ldmVyIGtub3cgOikuCgpLZXJuZWwg
d291bGQgYmUgdGhlIG1vc3Qgb2J2aW91cyBjaG9pY2UgZm9yIHVzIGFzIHRoZSBhZmZlY3RlZCBo
b3N0cyBhcmUgcmVhbGx5IG9ubHkgUWVtdS9LVk0gc2VydmVycyB0aGF0IGRpZG7igJl0IHNlZSBh
bnkgcmVsZXZhbnQgdXBkYXRlcyBpbiB0aGUgdXNlcmxhbmQgaW4gdGhlIHBhc3QgbW9udGhzLgoK
VGhhbmtzIGFnYWluLApDaHJpc3RpYW4KCi0tIApDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWlu
Z2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAwCkZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3Bl
cmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCkxlaXB6aWdlciBTdHIuIDcw
LzcxIMK3IDA2MTA4IEhhbGxlIChTYWFsZSkgwrcgRGV1dHNjaGxhbmQKSFIgU3RlbmRhbCBIUkIg
MjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBa
YWdyb2RuaWNrCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
