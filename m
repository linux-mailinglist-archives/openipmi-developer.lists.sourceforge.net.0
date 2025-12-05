Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C793CA6ACA
	for <lists+openipmi-developer@lfdr.de>; Fri, 05 Dec 2025 09:18:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Date:Message-Id:In-Reply-To:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M8HSfiMD2jEkmHsV6jw1q92zFCcp392NiKppyitK7qc=; b=i2C8u5r6luiw9P7cV/lRb5lp7m
	l/YYvk+rPI95Ddh8iZOFV2YzTcdH5XlVauhkDWazwjPueGcFVic06rulthdDw5zMBMsQxqt4DYnVG
	IOT9Eb3P8T0qLhoKmzwHWnL/9pZ6k0lIbrVCPuAStTQLIIPaOKnegJxvOGe+k7Xy7Op4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vRR1U-0002Ys-Cn;
	Fri, 05 Dec 2025 08:18:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1vRR1I-0002Ua-Ew
 for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 08:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:Date:Subject:Content-Type:Message-Id:
 From:In-Reply-To:References:Content-Transfer-Encoding:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cn8Adhn8cguQubUpTmAvmczsPfC3Ffk2GV6iZZrLE1U=; b=dSJE0AE7lLhfkXs8tkmtmq1flw
 pUNTTihSdaVnbvXVcSkk/6dB9qT02WiL7LTYwu4G2ZCtWNywx7Ie258QlLH0fliahauvKWgLnIxdf
 sFvHCLUxG6C+TIamX/Q8PcFNXdclugFb21FbZOvGO2PIRZPNFXpnqQWatQ/FKDO2/Hm8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:Date:Subject:Content-Type:Message-Id:From:In-Reply-To:
 References:Content-Transfer-Encoding:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cn8Adhn8cguQubUpTmAvmczsPfC3Ffk2GV6iZZrLE1U=; b=NY9ewtwhZB+TEalvrE34hFM31k
 IKeNgukceJNVPHj+vdGOWW3OT2gabxDrHI9Rs8J1P8Jm4NbVsphGlqrxNSfHE6HQpLYOU90hWdJzg
 Kyh77Qy48Iwm6lhhwFEM6rZq1pZlJft1oQwuQ7xj1GcnJw876fzAB+m9D8+ZIWuNu5Hg=;
Received: from sg-1-100.ptr.blmpb.com ([118.26.132.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRR1H-00063y-AU for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 08:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1764921674; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=Cn8Adhn8cguQubUpTmAvmczsPfC3Ffk2GV6iZZrLE1U=;
 b=RnVXKwAI6dHAn3JDO2b23H6wF22Ly9Ys/M3DUyNIRHhAKJBifOl3MUGSx2C4alVMi7W1/h
 78TpbCFurCATgFxdsFUqjDjkfm0NF1Xaanl10wcgR4B6Azy7TRo6ONpcdNDH3WpsW1TRij
 lbUrmIrq+RJSmfGAla1peJ9jgkNcuG8kGgXKxQzIE3FsG8v4jOepcgtywEQtYzIvABZ+F+
 Gw67NQ7Md1yRMXU/USiUDYhZBsU0tgHSFTQMZg95ZX3NVFz5uix/lyoi+YcNT1a+Lxvrsd
 u4nFKg21Wo577yIATu9iK9qimRjioBKriR89zYrKdt/7DqTrYRvxvZnIBsNn8A==
To: <corey@minyard.net>
X-Original-From: Jinhui Guo <guojinhui.liam@bytedance.com>
References: <aN_vFKhMi0tDT2rK@mail.minyard.net>
In-Reply-To: <aN_vFKhMi0tDT2rK@mail.minyard.net>
X-Mailer: git-send-email 2.17.1
Message-Id: <20251205080102.1039-1-guojinhui.liam@bytedance.com>
X-Lms-Return-Path: <lba+269329148+39e6f6+lists.sourceforge.net+guojinhui.liam@bytedance.com>
Date: Fri,  5 Dec 2025 16:01:02 +0800
Mime-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 3, 2025 at 10:43:16AM -0500, Corey Minyard wrote:
 > On Tue, Sep 30, 2025 at 03:42:36PM +0800, Jinhui Guo wrote: > > The command
 "ipmi -b -t" would occasionally fail: > > #ipmitool -b 6 -t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vRR1H-00063y-AU
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] ipmi: Close the race
 between __scan_channels() and deliver_response()
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
From: Jinhui Guo via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jinhui Guo <guojinhui.liam@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, guojinhui.liam@bytedance.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gRnJpLCBPY3QgMywgMjAyNSBhdCAxMDo0MzoxNkFNIC0wNTAwLCBDb3JleSBNaW55YXJkIHdy
b3RlOgo+IE9uIFR1ZSwgU2VwIDMwLCAyMDI1IGF0IDAzOjQyOjM2UE0gKzA4MDAsIEppbmh1aSBH
dW8gd3JvdGU6Cj4gPiBUaGUgY29tbWFuZCAiaXBtaSAtYiAtdCIgd291bGQgb2NjYXNpb25hbGx5
IGZhaWw6Cj4gPiAgICNpcG1pdG9vbCAtYiA2IC10IDB4MmMgcmF3IDB4NiAweDAxCj4gPiAgIFVu
YWJsZSB0byBzZW5kIGNvbW1hbmQ6IEludmFsaWQgYXJndW1lbnQKPiA+ICAgVW5hYmxlIHRvIHNl
bmQgUkFXIGNvbW1hbmQgKGNoYW5uZWw9MHg2IG5ldGZuPTB4NiBsdW49MHgwIGNtZD0weDEpCj4g
PiAKPiA+IFRoZSByYWNlIHdpbmRvdyBiZXR3ZWVuIF9fc2Nhbl9jaGFubmVscygpIGFuZCBkZWxp
dmVyX3Jlc3BvbnNlKCkgY2F1c2VzCj4gPiB0aGUgcGFyYW1ldGVycyBvZiBzb21lIGNoYW5uZWxz
IHRvIGJlIHNldCB0byAwLgo+ID4gCj4gPiBGaXggdGhlIHJhY2UgYmV0d2VlbiBfX3NjYW5fY2hh
bm5lbHMoKSBhbmQgZGVsaXZlcl9yZXNwb25zZSgpIHdpdGggdGhlCj4gPiBmb2xsb3dpbmcgY2hh
bmdlcy4KPiA+IAo+ID4gMS4gT25seSBhc3NpZ24gaW50Zi0+Y2hhbm5lbF9saXN0ID0gaW50Zi0+
d2NoYW5uZWxzIGFuZCBzZXQKPiA+ICAgIGludGYtPmNoYW5uZWxzX3JlYWR5ID0gdHJ1ZSBpbiBj
aGFubmVsX2hhbmRsZXIoKSBhZnRlciBhbGwgY2hhbm5lbHNfcmVhZHkKPiA+ICAgIGhhdmUgYmVl
biBzdWNjZXNzZnVsbHkgc2Nhbm5lZCBvciBhZnRlciBmYWlsaW5nIHRvIHNlbmQgdGhlIElQTUkK
PiA+ICAgIHJlcXVlc3QuCj4gPiAyLiBjaGFubmVsX2hhbmRsZXIoKSBzZXRzIGludGYtPmNoYW5u
ZWxzX3JlYWR5IHRvIHRydWUgYnV0IG5vIG9uZSBjbGVhcnMKPiA+ICAgIGl0LCBwcmV2ZW50aW5n
IF9fc2Nhbl9jaGFubmVscygpIGZyb20gcmVzY2FubmluZyBjaGFubmVscy4gV2hlbiB0aGUgQk1D
Cj4gPiAgICBmaXJtd2FyZSBjaGFuZ2VzIGEgcmVzY2FuIGlzIHJlcXVpcmVkLiBBbGxvdyBpdCBi
eSBjbGVhcmluZyB0aGUgZmxhZwo+ID4gICAgYmVmb3JlIHN0YXJ0aW5nIGEgbmV3IHNjYW4uCj4g
PiAzLiBDaGFubmVscyByZW1haW4gc3RhdGljIHVubGVzcyB0aGUgQk1DIGZpcm13YXJlIGNoYW5n
ZXMuIFNraXAgY2hhbm5lbAo+ID4gICAgcmVzY2FuIHdoZW4gbm8gQk1DIGZpcm13YXJlIHVwZGF0
ZSBoYXMgb2NjdXJyZWQuCj4gPiAKPiA+IAo+ID4gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI1MDkyOTA4MTYwMi4xOTAxLTEtZ3VvamluaHVpLmxpYW1AYnl0ZWRhbmNlLmNvbS8K
PiA+IAo+ID4gQ2hhbmdlbG9nIGluIHYxIC0+IHYyIChzdWdnZXN0ZWQgYnkgY29yZXkpOgo+ID4g
IC0gU3BsaXQgdGhlIGZpeCBpbnRvIHRocmVlIGluZGVwZW5kZW50IHBhdGNoZXMsIGVhY2ggYWRk
cmVzc2luZyBhCj4gPiAgICBzZXBhcmF0ZSBpc3N1ZS4KPiA+ICAtIENsZWFyIGludGYtPmNoYW5u
ZWxzX3JlYWR5IG9ubHkgd2hlbiB0aGUgQk1DIGZpcm13YXJlIGNoYW5nZXMuCj4gPiAKPiA+IEpp
bmh1aSBHdW8gKDMpOgo+ID4gICBpcG1pOiBGaXggdGhlIHJhY2UgYmV0d2VlbiBfX3NjYW5fY2hh
bm5lbHMoKSBhbmQgZGVsaXZlcl9yZXNwb25zZSgpCj4gPiAgIGlwbWk6IEZpeCBfX3NjYW5fY2hh
bm5lbHMoKSBmYWlsaW5nIHRvIHJlc2NhbiBjaGFubmVscwo+ID4gICBpcG1pOiBTa2lwIGNoYW5u
ZWwgc2NhbiBpZiBjaGFubmVscyBhcmUgYWxyZWFkeSBtYXJrZWQgcmVhZHkKCj4gSSBoYXZlIHRo
ZXNlIHF1ZXVlZCBmb3IgNi4xOC4gIEkgbmVlZCB0byByZS1yZXZpZXcgdGhlbTsgdGhhdCB3aWxs
Cj4gcHJvYmFibHkgaGFwcGVuIGxhdGVyIGluIHRoZSBjeWNsZTsgSSBjYW4ndCBwdXQgdGhlbSBp
biB1bnRpbCA2LjE3LXJjMQo+IHJlbGVhc2VzLgoKPiBUaGFua3MsCgo+IC1jb3JleQoKSGksIGNv
cmV5CgpGcmllbmRseSBwaW5nIOKAlCBwbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IG5lZWQgYW55
dGhpbmcgZWxzZSAocmViYXNlLCBtb3JlIHJldmlldywKdGVzdCByZXN1bHRzKSBhbmQgSeKAmWxs
IGJlIGhhcHB5IHRvIHRha2UgY2FyZSBvZiBpdC4KClRoYW5rcyBmb3IgeW91ciB0aW1lLCBhbmQg
c29ycnkgZm9yIHRoZSBub2lzZS4KCkJlc3QgcmVnYXJkcywKSmluaHVpCgo+ID4gCj4gPiAgZHJp
dmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCAyNCArKysrKysrKysrKysrKysrKy0t
LS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gLS0gCj4gPiAyLjIwLjEKPiA+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApP
cGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
