Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6558E6A5E4F
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Feb 2023 18:37:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pX3uP-0004gK-Uu;
	Tue, 28 Feb 2023 17:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1pX3uN-0004g5-6c
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 17:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OGqZwdqcqgMsXLC0QwrXEq6CFliE5upN9KrILUqrhLs=; b=Il6vefZPp9ibBlUO1s3CR3vDbb
 8YnKMjtBv8cobFsqeVMqxvZQxjfmhgWNCafGXteMPFmLQWSInD0LZ0CGIXiUhMr8Odu0I+yE7PnK9
 IFheTCohMHkZDk163+ahon1pOOu/pKJ6fYEWK0lcEGlhBQ2H3aKFieK7cCQII0vuTP94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OGqZwdqcqgMsXLC0QwrXEq6CFliE5upN9KrILUqrhLs=; b=IjUCA8r+pIyg/dxaea8kkJKHVV
 O1YYV0yLiI8qgBKpnAH49szXS3SS2i1Qg+ViUBlmC0taOSnTi8n0X4clb+t7jMe8Qvjf50/5E3ZCR
 9N7rGKc01+ohddK+AZVEXk+c3JiryTdeJM7S8glnDWEZL0QYy530oLoS13k6P02APzSo=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pX3uH-0007gy-F6 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Feb 2023 17:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1677605798;
 bh=OGqZwdqcqgMsXLC0QwrXEq6CFliE5upN9KrILUqrhLs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=dzaA+j5X76oBzhGtlB5Xn47S1qgIpmxgACvoIywNk7nZpQ3OSPLeL1Ki5i5iZC07g
 9Fk8kAnlJNA2se4JbXORZhZbKtxSzKwdd48eO50O3u7jJldWruwOfKlV2vHLAxC+Vy
 WT0lzi2Ul+XVAAGhIcC4CnCu3L7vSYYIaFAsAi1w=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
In-Reply-To: <Y/40CIt6lw+0vjv1@minyard.net>
Date: Tue, 28 Feb 2023 18:36:17 +0100
Message-Id: <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks,
 both machines report: # cat /sys/module/ipmi_msghandler/parameters/panic_op
 string > On 28. Feb 2023, at 18:04, Corey Minyard <minyard@acm.org> wrote:
 > > Oh, I forgot. You can look at panic_op in
 /sys/module/ipmi_msghandler/parameters/panic_op
 > > -corey > > On Tue, Feb 28, 2023 at [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pX3uH-0007gy-F6
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

VGhhbmtzLCBib3RoIG1hY2hpbmVzIHJlcG9ydDoKCiMgY2F0IC9zeXMvbW9kdWxlL2lwbWlfbXNn
aGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCnN0cmluZwoKCj4gT24gMjguIEZlYiAyMDIzLCBh
dCAxODowNCwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiAKPiBPaCwg
SSBmb3Jnb3QuICBZb3UgY2FuIGxvb2sgYXQgcGFuaWNfb3AgaW4gL3N5cy9tb2R1bGUvaXBtaV9t
c2doYW5kbGVyL3BhcmFtZXRlcnMvcGFuaWNfb3AKPiAKPiAtY29yZXkKPiAKPiBPbiBUdWUsIEZl
YiAyOCwgMjAyMyBhdCAwNTo0ODowN1BNICswMTAwLCBDaHJpc3RpYW4gVGhldW5lIHZpYSBPcGVu
aXBtaS1kZXZlbG9wZXIgd3JvdGU6Cj4+IEhpLAo+PiAKPj4+IE9uIDI4LiBGZWIgMjAyMywgYXQg
MTc6MzYsIENvcmV5IE1pbnlhcmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4+PiAKPj4+IE9u
IFR1ZSwgRmViIDI4LCAyMDIzIGF0IDAyOjUzOjEyUE0gKzAxMDAsIENocmlzdGlhbiBUaGV1bmUg
dmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPj4+PiBIaSwKPj4+PiAKPj4+PiBJ4oCZdmUg
YmVlbiB0cnlpbmcgdG8gZGVidWcgdGhlIFBBTklDIGFuZCBPRU0gc3RyaW5nIGhhbmRsaW5nIGFu
ZCBhbSBydW5uaW5nIG91dCBvZiBpZGVhcyB3aGV0aGVyIHRoaXMgaXMgYSBidWcgb3Igd2hldGhl
ciBzb21ldGhpbmcgc28gc3VidGxlIGhhcyBjaGFuZ2VkIGluIG15IGNvbmZpZyB0aGF0IEnigJlt
IGp1c3Qgbm90IHNlZWluZyBpdC4KPj4+PiAKPj4+PiAoTm90ZTogSeKAmW0gd2lsbGluZyB0byBw
YXkgZm9yIGNvbnN1bHRpbmcuKQo+Pj4gCj4+PiBQcm9iYWJseSBub3QgbmVjZXNzYXJ5Lgo+PiAK
Pj4gVGhhbmtzISBUaGUgb2ZmZXIgYWx3YXlzIHN0YW5kcy4gSWYgd2Ugc2hvdWxkIGV2ZXIgbWVl
dCBJ4oCZbSBhbHNvIGFibGUgdG8gcGF5IGluIGJldmVyYWdlcy4gOykKPj4gCj4+Pj4gSSBoYXZl
IG1hY2hpbmVzIHRoYXQgd2XigJl2ZSBtb3ZlZCBmcm9tIGFuIG9sZGVyIHNldHVwIChHZW50b28s
IChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDQuMTkuMTU3KSB0byBhIG5ld2VyIHNldHVwIChOaXhP
UywgKG1vc3RseSkgdmFuaWxsYSBrZXJuZWwgNS4xMC4xNTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJp
ZW5jaW5nIGNyYXNoZXMgdGhhdCBzZWVtIHRvIGJlIGtlcm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBn
ZXQgdGhlIHVzdWFsIG1lc3NhZ2VzIGluIHRoZSBJUE1JIFNFTC4KPj4+IAo+Pj4gSSBqdXN0IHRl
c3RlZCBvbiBzdG9jayA1LjEwLjE1OSBhbmQgaXQgd29ya2VkIHdpdGhvdXQgaXNzdWUuICBFdmVy
eXRoaW5nCj4+PiB5b3UgaGF2ZSBiZWxvdyBsb29rcyBvay4KPj4+IAo+Pj4gQ2FuIHlvdSB0ZXN0
IGJ5IGNhdXNpbmcgYSBjcmFzaCB3aXRoOgo+Pj4gCj4+PiBlY2hvIGMgPi9wcm9jL3N5c3JxLXRy
aWdnZXIKPj4+IAo+Pj4gYW5kIHNlZSBpZiBpdCB3b3Jrcz8KPj4gCj4+IFllYWgsIGFscmVhZHkg
dHJpZWQgdGhhdCBhbmQgdW5mb3J0dW5hdGVseSB0aGF0IF9kb2VzbuKAmXRfIHdvcmsuCj4+IAo+
Pj4gSXQgc291bmRzIGxpa2UgeW91IGFyZSBoYXZpbmcgc29tZSB0eXBlIG9mIGNyYXNoIHRoYXQg
eW91IHdvdWxkIG5vcm1hbGx5Cj4+PiB1c2UgdGhlIElQTUkgbG9ncyB0byBkZWJ1Zy4gIEhvd2V2
ZXIsIHRoZXkgYXJlbid0IHBlcmZlY3QsIHRoZSBzeXN0ZW0KPj4+IGhhcyB0byBzdGF5IHVwIGxv
bmcgZW5vdWdoIHRvIGdldCB0aGVtIGludG8gdGhlIGV2ZW50IGxvZy4KPj4gCj4+IEkgdGhpbmsg
dGhleSBhcmUgc3RheWluZyB1cCBsb25nIGVub3VnaCBiZWNhdXNlIGEgcGFuaWMgdHJpZ2dlcnMg
dGhlIDI1NSBzZWNvbmQgYnVtcCBpbiB0aGUgd2F0Y2hkb2cgYW5kIG9ubHkgdGhlbiBwYXNzIG9u
LiBIb3dldmVyLCBp4oCZdmUgYWxzbyBub3RpY2VkIHRoYXQgdGhlIGtlcm5lbCBfc2hvdWxkXyBi
ZSByZWJvb3RpbmcgYWZ0ZXIgYSBwYW5pYyBtdWNoIGZhc3RlciAoYW5kIG5vdCByZWx5IG9uIHRo
ZSB3YXRjaGRvZykgYW5kIHRoYXQgZG9lc27igJl0IGhhcHBlbiBlaXRoZXIuIChTb3JyeSB0aGlz
IGp1c3QgcG9wcGVkIGZyb20gdGhlIGJhY2sgb2YgbXkgaGVhZCkuCj4+IAo+Pj4gSW4gdGhpcyBz
aXR1YXRpb24sIGdldHRpbmcgYSBzZXJpYWwgY29uc29sZSAocHJvYmFibHkgdGhyb3VnaCBJUE1J
Cj4+PiBTZXJpYWwgb3ZlciBMQU4pIGFuZCBnZXR0aW5nIHRoZSBjb25zb2xlIG91dHB1dCBvbiBh
IGNyYXNoIGlzIHByb2JhYmx5Cj4+PiB5b3VyIGJlc3Qgb3B0aW9uLiAgWW91IGNhbiB1c2UgaXBt
aXRvb2wgZm9yIHRoaXMsIG9yIEkgaGF2ZSBhIGxpYnJhcnkKPj4+IHRoYXQgaXMgYWJsZSB0byBt
YWtlIGNvbm5lY3Rpb25zIHRvIHNlcmlhbCBwb3J0cywgaW5jbHVkaW5nIHRocm91Z2ggSVBNSQo+
Pj4gU29MLgo+PiAKPj4gWXVwLiBCZWVuIHRoZXJlLCB0b28uIDopCj4+IAo+PiBVbmZvcnR1bmF0
ZWx5IHdl4oCZcmUgY3VycmVudGx5IGNoYXNpbmcgc29tZXRoaW5nIHRoYXQgcG9wcyB1cCB2ZXJ5
IHJhbmRvbWx5IG9uIHNvbWV3aGF0IG9kZCBtYWNoaW5lcyBhbmQgSSBhbHNvIGhhdmUgdGhlIGZl
ZWxpbmcgdGhhdCBpdOKAmXMgc3lzdGVtYXRpY2FsbHkgYnJva2VuIHJpZ2h0IG5vdyAoYXMgdGhl
IOKAnGVjaG8gY+KAnSBkb2VzbuKAmXQgd29yaykuCj4+IAo+PiBUaGFua3MgYSBsb3QsCj4+IENo
cmlzdGlhbgo+PiAKPj4gLS0gCj4+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3Vz
LmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKPj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRp
b25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPj4gTGVpcHppZ2VyIFN0ci4gNzAv
NzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+PiBIUiBTdGVuZGFsIEhS
QiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFu
IFphZ3JvZG5pY2sKPj4gCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdAo+PiBP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4+IGh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3BlcgoKTGllYmUg
R3LDvMOfZSwKQ2hyaXN0aWFuIFRoZXVuZQoKLS0gCkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5
aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBP
cGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KTGVpcHppZ2VyIFN0ci4g
NzAvNzEgwrcgMDYxMDggSGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZApIUiBTdGVuZGFsIEhS
QiAyMTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFu
IFphZ3JvZG5pY2sKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
