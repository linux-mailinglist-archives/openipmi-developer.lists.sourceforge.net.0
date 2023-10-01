Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B06B7B4891
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Oct 2023 18:14:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qmz5j-0008GJ-P5;
	Sun, 01 Oct 2023 16:14:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1qmz5g-0008G5-H3
 for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 16:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kzs1wBEi79XfoSNjeL5Ek4yLxTxHZkayPhD8b6U788A=; b=PaAVgRFJZU7rgcbM6JOxCII++w
 INuOPUAjF+WIHHa0+LUL5mxB7F8YbmfM3dTkEExZkNMb1YCqAsx8a4dFyf/jAgmBHT4nkhwC0E/3V
 zBvYTBBszU2c1+pljIhGo15kui9EWnCOyM/QNY0YnFUnaei3XPDNQ+l9XjSzXbJo4fw4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kzs1wBEi79XfoSNjeL5Ek4yLxTxHZkayPhD8b6U788A=; b=hQg8cTStEvK0bqwVn5bxNgesEI
 oGxrDuIANncSX1o1wjg/6FBxd7N780FSq1hKNDzORa5HUi5o8PE8hEc6Cw4iklnMxSGNgsfgV/Inx
 y+tEwj/hf5ViCfPmfoym17JhjSbn2aS4tQ6QARU0g2OnT+LCOIT9LnjO8jZflXl16XAU=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qmz5d-00ETxl-8s for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 16:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1696176869;
 bh=kzs1wBEi79XfoSNjeL5Ek4yLxTxHZkayPhD8b6U788A=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=p39+V7QThKUw61xgKlRWLHk4SestliGfLMCNyOL2kR0Q0cfo4WdaOWY31lTHDDqa9
 txbozbcXdB4l+/f4L4K/0HcPdNn6VdxYTBaawofIiMDsZuy4Wc+VhnwhiIKMfB1TSu
 tk1nmN2fnNpTRkLpfPQ4wOC+B/7JTOQ0fDUJUi4E=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
In-Reply-To: <ZRjQPz3Sba+qH/ZT@mail.minyard.net>
Date: Sun, 1 Oct 2023 18:14:08 +0200
Message-Id: <4EC9716D-6120-4675-949F-BFFEFAE63DDA@flyingcircus.io>
References: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
 <ZRjQPz3Sba+qH/ZT@mail.minyard.net>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, > On 1. Oct 2023, at 03:49, Corey Minyard <minyard@acm.org>
    wrote: > > On Sat, Sep 30, 2023 at 11:14:01PM +0200, Christian Theune via
    Openipmi-developer wrote: >> Hi, >> >> sorry if this isn’t direc [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1qmz5d-00ETxl-8s
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

SGksCgo+IE9uIDEuIE9jdCAyMDIzLCBhdCAwMzo0OSwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBh
Y20ub3JnPiB3cm90ZToKPiAKPiBPbiBTYXQsIFNlcCAzMCwgMjAyMyBhdCAxMToxNDowMVBNICsw
MjAwLCBDaHJpc3RpYW4gVGhldW5lIHZpYSBPcGVuaXBtaS1kZXZlbG9wZXIgd3JvdGU6Cj4+IEhp
LAo+PiAKPj4gc29ycnkgaWYgdGhpcyBpc27igJl0IGRpcmVjdGx5IGEgZGV2ZWxvcGVycyBxdWVz
dGlvbiwgYnV0IEnigJl2ZSBydW4gb3V0IG9mIGF2ZW51ZXMgYWZ0ZXIgZ29vZ2xpbmcgYW5kIGxv
b2tpbmcgYXJvdW5k4oCmIAo+PiAKPj4gV2XigJlyZSBleHBlcmllbmNpbmcgd2VpcmQgc3lzdGVt
IHN0YWJpbGl0eSBpc3N1ZSB3aGVyZSB0aGUg4oCcbG9nIHRvIFNFTOKAnSBkb2VzbuKAmXQgY3V0
IGl0OiB3ZSBzZWUgd2F0Y2hkb2cgcmVib290cyBidXQgbm8ga2VybmVsIG91dHB1dCB3aGF0c29l
dmVyIGVuZGluZyB1cCBpbiB0aGUgU0VMLiAoSeKAmXZlIGRlYnVnZ2VkIHRoaXMgd2l0aCBDb3Jl
eSBiZWZvcmUgYW5kIHdlIGZvdW5kIHNvbWV0aGluZyB0byBmaXggYnV0IHRoZSB3YXRjaGRvZyBl
dmVudHMgd2XigJlyZSBleHBlcmllbmNpbmcgc3RpbGwgZG9u4oCZdCBnZXQgbG9nZ2VkIGluIG1v
cmUgZGV0YWlsLikKPiAKPiBDYW4geW91IG5vdCBnZXQga2VybmVsIGNvcmVkdW1wcz8KClVuZm9y
dHVuYXRlbHkgbm8gYW5kIEkgc3RpbGwgaGF2ZSBhYnNvbHV0ZWx5IG5vdyBpZGVhIHdoeSB0aGUg
d2F0Y2hkb2cgdHJpZ2dlcnPigKYgCgpJIGhhdmUgY3VycmVudGx5IGF0dGFjaGVkIGRvemVucyBv
ZiBzZXJ2ZXJzIHRoYXQgYXJlIHBhcnQgb2YgYSBteXN0ZXJpb3VzIHNlcmllcyBvZiBjcmFzaGVz
IGJ1dCB0aGV5IGRpZG7igJl0IGNyYXNoIGFmdGVyIEkgYXR0YWNoZWQgdGhlIFNPTCBjb250aW51
b3VzbHkuIEp1c3QgbXkga2luZCBvZiBsdWNrIEkgZ3Vlc3Mg4oCmIDspCgpBcyB3ZeKAmXJlIGNv
bnRpbnVvdXNseSB1cGRhdGluZyBvdXIgZW52aXJvbm1lbnQgaXQgbWlnaHQgYWxzbyBiZSB0aGF0
IHdl4oCZdmUgc3VjY2Vzc2Z1bGx5IGV2YWRlZCBhIGtlcm5lbCBidWcgdGhhdCB3YXMgaGF1bnRp
bmcgdXMg4oCmIG1heWJlIOKApiA7KQoKPj4gCj4+IEnigJltIHdvbmRlcmluZzogZG9lcyBhbnlv
bmUga25vdyBvZiBhIOKAnHB1c2jigJ0gc29sdXRpb24gdG8gaW5zdHJ1Y3QgdGhlIEJNQyAobW9z
dGx5IFN1cGVybWljcm8gaW4gb3VyIGNhc2UpIHRvIHB1c2ggU09MIG91dHB1dCBwcm9hY3RpdmVs
eSB0aHJvdWdoIHNvbWUgcHJvdG9jb2wgbGlrZSBzeXNsb2c/IAo+IAo+IFRoZSBTRUwgcHJvYmFi
bHkgaXNuJ3QgYmlnIG9yIGZhc3QgZW5vdWdoIHRvIHRha2Ugc3lzdGVtIGxvZ3MuICBZb3UKPiBj
b3VsZCBjcmVhdGUgc29tZXRoaW5nIGxpa2UgdGhpcyBhcyBwYXJ0IG9mIHByaW50aywgYnV0IEkg
c3VzcGVjdCB0aGF0Cj4gaXQgd291bGQgcXVpY2tseSBvdmVyZmxvdyB0aGUgU0VMLgoKWWVhaCwg
SSB3YXNu4oCZdCB0aGlua2luZyBhYm91dCB0aGUgU0VMIGJ1dCB3b25kZXJpbmcgd2hldGhlciBz
ZXJpYWwgb3V0cHV0IGNvdWxkIGJlIHNoaXBwZWQgaW4gYSBwdXNoLW1hbm5lciBmcm9tIHRoZSBC
TUMgd2l0aG91dCBoYXZpbmcgdG8gYXR0YWNoIGFuZCBhdXRoZW50aWNhdGUuCgo+PiBPdGhlcndp
c2Ugd2XigJlkIG5lZWQgdG8gc2V0IHVwIGEgY2VudHJhbCBob3N0IHdpdGggcGFzc3dvcmRzIGZv
ciBkb3plbnMgb2YgaG9zdHMgdG8gcHVsbCB0aGUgU09MIGZvciBsb2dnaW5nIGFuZCB0aGF0IGRv
ZXNu4oCZdCBmZWVsIHJpZ2h0IGVpdGhlciDigKYgLV9fCj4gCj4gSSBrbm93IHBlb3BsZSB0aGF0
IGRvIHRoaXM7IGl0J3Mgbm90IHRlcnJpYmxlLiAgWW91IGRvIGhhdmUgYWxsIG9mIHlvdXIKPiBJ
UE1JIHBhc3N3b3JkcyBpbiBvbmUgcGxhY2UsIHRoYXQncyB0aGUgYmlnZ2VzdCBpc3N1ZSwgYnV0
IElNSE8geW91Cj4gc2hvdWxkIGJlIG1vbml0b3JpbmcgdGhlIG91dHB1dCBvZiB5b3VyIGNvbnNv
bGVzLCBhbnl3YXkuCgpZZWFoLCB0aGF04oCZcyB3aGF0IEnigJltIHBvbmRlcmluZywgdG9vLiBJ
TUhPIGl04oCZcyBxdWl0ZSBhIGJpdCB0ZXJyaWJsZSBhbmQgdGh1cyBJIHdhcyB3b25kZXJpbmcg
d2hldGhlciB0aGUgQk1DIG1pZ2h0IGhhdmUgYSBidWlsdC1pbiBzb2x1dGlvbiB0aGF0IHdvdWxk
IHR1cm4gdGhpcyB1cHNpZGUgZG93biDigKYgYnV0IEkgZ2VzcyBub3QKCj4gSSBzdXBwb3J0IGEg
cHJvZ3JhbSBjYWxsZWQgc2VyMm5ldCB0aGF0IGlzIGNhcGFibGUgb2YgbWFraW5nIFNPTAo+IGNv
bm5lY3Rpb25zLCBsb2dnaW5nIHRoZSBvdXRwdXQsIGFuZCBhbGxvd2luZyBjb25uZWN0aW9ucyB0
byB0aGUKPiBjb25zb2xlLiAgVGhhdCB3b3VsZCBiZSBhIHByZXR0eSBjb21wbGljYXRlZCBzZXR1
cCwgYnV0IEkgY2FuIGhlbHAgeW91Cj4gd2l0aCBpdCwgaWYgeW91IGxpa2UuCgpUaGUgbXVsdGlw
bGV4aW5nIHNvdW5kcyBncmVhdC4gSeKAmXZlIGJ1aWx0IGEgc21hbGwgc2hlbGwgd3JhcHBlciB0
byBtYW5hZ2UgU09MIGNvbm5lY3Rpb25zIGFuZCB0aGVpciBsb2dnaW5nIChhbmQgcmVjb25uZWN0
aW5nIGlmIHRoZSBCTUMgYWN0cyB1cCkgd2hpY2ggd29ya3MgZm9yIG5vdy4KCkZyb20gYSBkZXNp
Z24gcGVyc3BlY3RpdmUgSeKAmWQgcmVhbGx5IGxvdmUgdGhpcyB0byBiZSBwdXNoLWJhc2VkLiBJ
IHJlc2VhcmNoZWQgdGhlIGRtdGYgc2l0ZSwgYnV0IGRpZG7igJl0IGZpbmQgYW55dGhpbmcgdGhl
cmUgZWl0aGVyIOKApiBJIGd1ZXNzIEnigJltIHRoZSBvZGQtb25lIG91dCB0aGVuIOKApiAKCkNo
cmlzdGlhbgoKLS0gCkNocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0
OSAzNDUgMjE5NDAxIDAKRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRpb25zIEdtYkggwrcg
aHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFs
bGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZApIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOk
ZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1p
LWRldmVsb3Blcgo=
