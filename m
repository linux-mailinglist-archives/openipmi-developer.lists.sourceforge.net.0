Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 397E1AD99D3
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 Jun 2025 04:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qhaSu9hY630ONFeHQIyQcxw0g79ODOBHGSoaq1PoySU=; b=k7A/G6GXon576U0BC+y5uPKccj
	1nSBXKCHtR14PU+xrNP4xM0kmdgrswRN2DFCoJb9V/EKdhcnTmIegIzBnlIgO52EVCKpORp0kfSwt
	qy3SlLLZZkhdZnRhsBAdxBdJjt9ROw3DHI3eAKnnDseXxmGYjMxvsz9YkEYLzWhOuM6M=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uQGz2-0000NQ-5K;
	Sat, 14 Jun 2025 02:51:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uQGz0-0000NJ-Gi
 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 02:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=reW5LCT7F0G44H+pooztus/zBkKfkR0anUQESqlGGXg=; b=PHDWQxA+tcLBwAJkrwuacqwukJ
 zSWiWThwi2gKDC6amPYO3LjFYTMc/R5kvJ9ns1meoiZWwBrd+cs3ZHdrB+oLUzNmtW+/liOY7MWll
 /MlGzMJAMrRP/Yc7Te5ChownBBHgb9HWHGZBKn59mih0aIHc7sl6EfDZ+R6xUa9ThG78=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=reW5LCT7F0G44H+pooztus/zBkKfkR0anUQESqlGGXg=; b=EexlAgQBACQ6we8jyupEObt62Z
 DuGjcL2hO1fezv4dn0TYIyZU5vOjCtSOOvbdmqQPP8RQGeqHX6CH4muZYfyqKYK0GGhH4+uDbeWdD
 uaI/NX8eNPnUTWIlKiUUWP4o7br+CDVo9vS8Oa5T47cMg6xi+W4unghaSBoF0PjB748s=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uQGyz-0006M0-U3 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 02:51:02 +0000
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-ad89333d603so533106666b.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Jun 2025 19:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749869450; x=1750474250; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=reW5LCT7F0G44H+pooztus/zBkKfkR0anUQESqlGGXg=;
 b=PtP8LRxWTAcNBmkJtrKMzztilavOXhzaal4UQtx5yrWG9LZpOjwfZYWElkmQsXUf8S
 F6eH2FStbJRRvaRxa3BAhqcy2bz3U/95bVl1PwoLr+JAAvIJQE2ar+04qHGpPjt8Hft2
 72bXvoCCs4q+GhH2M4OmLekRash4qt8w6l62Z89HjUTYnXv2jNZ3qzfaJTgC7KIeL37b
 u8mqFrRBFaMTX2zn9Mw/nfl0kYUtmXzxPwEwtPFfHOi024VOzikRAhtSUdz/gUq/21mD
 PxqJqybEV+gzI0Q5ogHrRn/T35UsFIPiT04MCQXAcQMnspEYh0OxFThzLoe/gS9xdbBr
 6B2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749869450; x=1750474250;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=reW5LCT7F0G44H+pooztus/zBkKfkR0anUQESqlGGXg=;
 b=Oz1cpBwv2eXUgXAPbfsqnxGV/WcD4wqiy8XXLyKs4oWHUrrCGdDgBdimCGSa66VPko
 5j2rWUCcYe4UnsVAG6VbqETve849i0+LxPuSjJA0MbL8g0QidisjEA6te/F3M4zE48Jt
 UCmcfIGD7zxplaOFY5S+dkOViBTIl/veXJHCIbkCaSy3UlUAgME9rG8MUodC8PB1VQIv
 Jjf4dEvEzCYClHILV4vZYF4dMUGP2M/QwLNuo1eGwLHNQHDxTHp/WqG83fHJs+NbxZHO
 wWlUQKcgIFkjY1QW4CHeGl9csxBxAgZnTAujKG1KCQ11NM4BIdX50TB9HbNWBHUFRlJd
 Et6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFUXUPjhAunevLKLEoq364+5RhvGJCEp1ti3Wif6AI9OEi4yyRswW4wV2oO5phEBEgJdAEuuIdCZkIW0eRXzQa4yw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxTcA/tCZ1p2sKzcSYirM0NLbldWXMBj/tKMj+bpheImpC1Rf+F
 vU/mxW+L9HgUV4UmE4Hp0MH5idM9Niq+WLz1ab1iFgKkW3RisnDygcc8/sX8pBliV5NtU3TkHKy
 y32dja7JaayGS0roMSUYf3Gd2vYSY5sCVnmhd2+fU5A==
X-Gm-Gg: ASbGncu/OoqOb+S1gyfM8pxRiDi0cOnAWJkQVOS3RirfopU5c0VLz8H5xouzOth3CcQ
 5KeinGEZg+uqIQpUxuCg+u/988mLkFp4cI3csV+xbv1s34UEWUljZcCv36twIhcZEPpurreySRX
 i5Z1VDdi+O/Qy2VCeSNtXrXEBXmDRfWj0AiYvfIbeGR/w=
X-Google-Smtp-Source: AGHT+IF/Q0o6Yl7zNwQgrK7c7P+nIiKSAwskEsw51/vaH4NuCZSSwKShmLHUv0Fyz0Ihla6ndeFaxUGInwUaR7icFVE=
X-Received: by 2002:a17:907:3e08:b0:ad2:4da6:f58c with SMTP id
 a640c23a62f3a-adfad594f01mr129675266b.46.1749869449968; Fri, 13 Jun 2025
 19:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
 <aEzFPdYEvbkaH_B5@mail.minyard.net>
In-Reply-To: <aEzFPdYEvbkaH_B5@mail.minyard.net>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Sat, 14 Jun 2025 10:50:37 +0800
X-Gm-Features: AX0GCFv4h7xWDH3ozZIWsx0a_f5_jGW6ZYKf82T8TFw1i_6zr_wtJ3dRp7i1A-w
Message-ID: <CAMpQs4L66sXLdj6+ebMXcwq4i+XVi+AmwBbQSx0-EuULNJ5XeQ@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey: On Sat, Jun 14,
 2025 at 8:41 AM Corey Minyard wrote:
 > > On Fri, Jun 13, 2025 at 02:43:38PM +0800, Binbin Zhou wrote: > > Hi all:
 > > > > This patch set introduces the Loongson-2K BMC. > > > > It is [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zhoubb.aaron(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uQGyz-0006M0-U3
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] LoongArch: Add Loongson-2K
 BMC support
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
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQ29yZXk6CgpPbiBTYXQsIEp1biAxNCwgMjAyNSBhdCA4OjQx4oCvQU0gQ29yZXkgTWlueWFy
ZCA8Y29yZXlAbWlueWFyZC5uZXQ+IHdyb3RlOgo+Cj4gT24gRnJpLCBKdW4gMTMsIDIwMjUgYXQg
MDI6NDM6MzhQTSArMDgwMCwgQmluYmluIFpob3Ugd3JvdGU6Cj4gPiBIaSBhbGw6Cj4gPgo+ID4g
VGhpcyBwYXRjaCBzZXQgaW50cm9kdWNlcyB0aGUgTG9vbmdzb24tMksgQk1DLgo+ID4KPiA+IEl0
IGlzIGEgUENJZSBkZXZpY2UgcHJlc2VudCBvbiBzZXJ2ZXJzIHNpbWlsYXIgdG8gdGhlIExvb25n
c29uLTMgQ1BVcy4KPiA+IEFuZCBpdCBpcyBhIG11bHRpZnVuY3Rpb25hbCBkZXZpY2UgKE1GRCks
IHN1Y2ggYXMgZGlzcGxheSBhcyBhIHN1Yi1mdW5jdGlvbgo+ID4gb2YgaXQuCj4KPiBJJ3ZlIGFz
a2VkIHRoaXMgYmVmb3JlLCBidXQgSSBoYXZlbid0IGdvdHRlbiBhIGFuc3dlciwgSSBkb24ndCB0
aGluay4KPgo+IElzIHRoaXMgcmVhbGx5IGEgbXVsdGktZnVuY3Rpb24gZGV2aWNlPyAgSXMgdGhl
cmUgKG9yIHdpbGwgdGhlcmUgYmUpCj4gYW5vdGhlciBkcml2ZXIgdGhhdCB1c2VzIHRoZSBNRkQg
Y29kZT8KCkkgYW0gdmVyeSBzb3JyeSwgSSBtYXkgaGF2ZSBvdmVybG9va2VkIHlvdXIgcHJldmlv
dXMgcXVlc3Rpb24uCgpBbmQgSSBhbHNvIG1heSBub3QgaGF2ZSBhIHRob3JvdWdoIHVuZGVyc3Rh
bmRpbmcgb2YgbXVsdGlmdW5jdGlvbiBkZXZpY2VzLgoKVGhlIExvb25nc29uLTJLIEJNQyBkZXZp
Y2UgcHJvdmlkZXMgdHdvIGZ1bmN0aW9uczogZGlzcGxheSBhbmQgSVBNSS4KRm9yIGRpc3BsYXks
IHdlIHBhc3MgdGhlIHNpbXBsZWZiX3BsYXRmb3JtX2RhdGEgcGFyYW1ldGVyIGFuZCByZWdpc3Rl
cgp0aGUgc2ltcGxlZHJtIGRldmljZSwgYXMgc2hvd24gaW4gcGF0Y2gtMS4KClRoZXJlZm9yZSwg
SSB0aGluayB0aGlzIHNob3VsZCBiZSBjb25zaWRlcmVkIGEgbXVsdGlmdW5jdGlvbiBkZXZpY2Uu
Cgo+Cj4gSWYgbm90aGluZyBlbHNlIGlzIGdvaW5nIHRvIHVzZSB0aGlzLCB0aGVuIGl0J3MgcmVh
bGx5IG5vdCBhCj4gbXVsdGktZnVuY3Rpb24gZGV2aWNlIGFuZCBhbGwgdGhlIGNvZGUgY2FuIGdv
IGludG8gdGhlIElQTUkgZGlyZWN0b3J5Lgo+IFRoYXQgc2ltcGxpZmllcyBtYWludGVuYW5jZS4K
Pgo+IElmIGl0IGlzIGEgbXVsdGktZnVuY3Rpb24gZGV2aWNlLCB0aGVuIEkgd2FudCB0d28gc2Vw
YXJhdGUgS2NvbmZpZwo+IGl0ZW1zLCBvbmUgZm9yIHRoZSBNRkQgYW5kIG9uZSBmb3IgdGhlIElQ
TUkgcG9ydGlvbi4gIFRoYXQgd2F5IGl0J3MKPiByZWFkeSBhbmQgeW91IGRvbid0IGhhdmUgdG8g
Ym90aGVyIGFib3V0IHRoZSBJUE1JIHBvcnRpb24gd2hlbgo+IGFkZGluZyB0aGUgb3RoZXIgZGV2
aWNlLgo+Cj4gQWxsIGVsc2UgbG9va3MgZ29vZCwgSSB0aGluay4KPgo+IC1jb3JleQo+Cj4gPgo+
ID4gRm9yIElQTUksIGFjY29yZGluZyB0byB0aGUgZXhpc3RpbmcgZGVzaWduLCB3ZSB1c2Ugc29m
dHdhcmUgc2ltdWxhdGlvbiB0bwo+ID4gaW1wbGVtZW50IHRoZSBLQ1MgaW50ZXJmYWNlIHJlZ2lz
dGVyczogU3RhdXRzL0NvbW1hbmQvRGF0YV9PdXQvRGF0YV9Jbi4KPiA+Cj4gPiBBbHNvIHNpbmNl
IGJvdGggaG9zdCBzaWRlIGFuZCBCTUMgc2lkZSByZWFkIGFuZCB3cml0ZSBrY3Mgc3RhdHVzLCB3
ZSB1c2UKPiA+IGZpZm8gcG9pbnRlciB0byBlbnN1cmUgZGF0YSBjb25zaXN0ZW5jeS4KPiA+Cj4g
PiBGb3IgdGhlIGRpc3BsYXksIGJhc2VkIG9uIHNpbXBsZWRybSwgdGhlIHJlc29sdXRpb24gaXMg
cmVhZCBmcm9tIGEgZml4ZWQKPiA+IHBvc2l0aW9uIGluIHRoZSBCTUMgc2luY2UgdGhlIGhhcmR3
YXJlIGRvZXMgbm90IHN1cHBvcnQgYXV0by1kZXRlY3Rpb24KPiA+IG9mIHRoZSByZXNvbHV0aW9u
LiBPZiBjb3Vyc2UsIHdlIHdpbGwgdHJ5IHRvIHN1cHBvcnQgbXVsdGlwbGUKPiA+IHJlc29sdXRp
b25zIGxhdGVyLCB0aHJvdWdoIGEgdmJpb3MtbGlrZSBhcHByb2FjaC4KPiA+Cj4gPiBFc3BlY2lh
bGx5LCBmb3IgdGhlIEJNQyByZXNldCBmdW5jdGlvbiwgc2luY2UgdGhlIGRpc3BsYXkgd2lsbCBi
ZQo+ID4gZGlzY29ubmVjdGVkIHdoZW4gQk1DIHJlc2V0LCB3ZSBtYWRlIGEgc3BlY2lhbCB0cmVh
dG1lbnQgb2YgcmUtcHVzaC4KPiA+Cj4gPiBCYXNlZCBvbiB0aGlzLCBJIHdpbGwgcHJlc2VudCBp
dCBpbiBmb3VyIHBhdGNoZXM6Cj4gPiBwYXRjaC0xOiBCTUMgZGV2aWNlIFBDSSByZXNvdXJjZSBh
bGxvY2F0aW9uLgo+ID4gcGF0Y2gtMjogQk1DIHJlc2V0IGZ1bmN0aW9uIHN1cHBvcnQKPiA+IHBh
dGNoLTM6IElQTUkgaW1wbGVtZW50YXRpb24KPiA+Cj4gPiBUaGFua3MuCj4gPgo+ID4gLS0tLS0t
LQo+ID4gVjQ6Cj4gPiAtIEFkZCBSZXZpZXdlZC1ieSB0YWc7Cj4gPiAtIENoYW5nZSB0aGUgb3Jk
ZXIgb2YgdGhlIHBhdGNoZXMuCj4gPiBQYXRjaCAoMS8zKToKPiA+ICAgLSBGaXggYnVpbGQgd2Fy
bmluZyBieSBsa3A6IEtjb25maWcgdHJpc3RhdGUgLT4gYm9vbAo+ID4gICAgIC0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTMxMjAyMi5RbUZtR0UxRi1sa3BAaW50ZWwuY29tLwo+
ID4gIC0gVXBkYXRlIGNvbW1pdCBtZXNzYWdlOwo+ID4gIC0gTW92ZSBNRkRfTFMyS19CTUMgYWZ0
ZXIgTUZEX0lOVEVMX00xMF9CTUNfUE1DSSBpbiBLY29uZmlnIGFuZAo+ID4gICAgTWFrZWZpbGUu
Cj4gPiBQYXRjaCAoMi8zKToKPiA+ICAgLSBSZW1vdmUgdW5uZWNlc3NhcnkgbmV3bGluZXM7Cj4g
PiAgIC0gUmVuYW1lIGxzMmtfYm1jX2NoZWNrX3BjaWVfY29ubmVjdGVkKCkgdG8KPiA+ICAgICBs
czJrX2JtY19wY2llX2lzX2Nvbm5lY3RlZCgpOwo+ID4gICAtIFVwZGF0ZSBjb21tZW50IG1lc3Nh
Z2UuCj4gPiBQYXRjaCAoMy8zKToKPiA+ICAgLSBSZW1vdmUgdW5uZWNlc3NhcnkgbmV3bGluZXMu
Cj4gPgo+ID4gTGluayB0byBWMzoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zl
ci4xNzQ4NTA1NDQ2LmdpdC56aG91YmluYmluQGxvb25nc29uLmNuLwo+ID4KPiA+IFYzOgo+ID4g
UGF0Y2ggKDEvMyk6Cj4gPiAgLSBEcm9wICJNRkQiIGluIHRpdGxlIGFuZCBjb21tZW50Owo+ID4g
IC0gRnJvbWF0dGluZyBjb2RlOwo+ID4gIC0gQWRkIGNsZWFyZXIgY29tbWVudHMuCj4gPiBQYXRj
aCAoMi8zKToKPiA+ICAtIFJlYmFzZSBsaW51eC1pcG1pL25leHQgdHJlZTsKPiA+ICAtIFVzZSBy
ZWFkeCgpL3dyaXRleCgpIHRvIHJlYWQgYW5kIHdyaXRlIElQTUkgZGF0YSBpbnN0ZWFkIG9mIHN0
cnVjdHVyZQo+ID4gICAgcG9pbnRlciByZWZlcmVuY2VzOwo+ID4gIC0gQ09ORklHX0xPT05HQVJD
SCAtPiBNRkRfTFMyS19CTUM7Cj4gPiAgLSBEcm9wIHVudXNlZCBvdXRwdXQuCj4gPiBQYXRjaCAo
My8zKToKPiA+ICAtIElubGluZSB0aGUgbHMya19ibWNfZ3Bpb19yZXNldF9oYW5kbGVyKCkgZnVu
Y3Rpb24gdG8gbHMya19ibWNfcGRhdGFfaW5pdGlhbCgpOwo+ID4gIC0gQWRkIGNsZWFyZXIgY29t
bWVudHMuCj4gPiAgLSBVc2UgcHJvcGVyIG11bHRpLWxpbmUgY29tbWVudGFyeSBhcyBwZXIgdGhl
IENvZGluZyBTdHlsZSBkb2N1bWVudGF0aW9uOwo+ID4gIC0gRGVmaW5lIGFsbCBtYWdpYyBudW1i
ZXJzLgo+ID4KPiA+IExpbmsgdG8gVjI6Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
Y292ZXIuMTc0NzI3NjA0Ny5naXQuemhvdWJpbmJpbkBsb29uZ3Nvbi5jbi8KPiA+Cj4gPiBWMjoK
PiA+IC0gRHJvcCBsczJrZHJtLCB1c2Ugc2ltcGxlZHJtIGluc3RlYWQuCj4gPiBQYXRjaCAoMS8z
KToKPiA+ICAtIFVzZSBERUZJTkVfUkVTX01FTV9OQU1FRC9NRkRfQ0VMTF9SRVMgc2ltcGxpZmll
ZCBjb2RlOwo+ID4gIC0gQWRkIHJlc29sdXRpb24gZmV0Y2hpbmcgZHVlIHRvIHJlcGxhY2luZyB0
aGUgb3JpZ2luYWwgZGlzcGxheQo+ID4gICAgc29sdXRpb24gd2l0aCBzaW1wbGVkcm07Cj4gPiAg
LSBBZGQgYXBlcnR1cmVfcmVtb3ZlX2NvbmZsaWN0aW5nX2RldmljZXMoKSB0byBhdm9pZCBlZmlm
Ygo+ID4gICAgY29uZmxpY3Qgd2l0aCBzaW1wbGVkcm0uCj4gPiBQYXRjaCAoMy8zKToKPiA+ICAt
IFRoaXMgcGFydCBvZiB0aGUgZnVuY3Rpb24sIG1vdmVkIGZyb20gdGhlIG9yaWdpbmFsIGxzMmtk
cm0gdG8gbWZkOwo+ID4gIC0gVXNlIHNldF9jb25zb2xlIHRvIGltcGxlbWVudCB0aGUgUmUtcHVz
aCBkaXNwbGF5IGZ1bmN0aW9uLgo+ID4KPiA+IExpbmsgdG8gVjE6Cj4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvY292ZXIuMTczNTU1MDI2OS5naXQuemhvdWJpbmJpbkBsb29uZ3Nvbi5j
bi8KPiA+Cj4gPiBCaW5iaW4gWmhvdSAoMyk6Cj4gPiAgIG1mZDogbHMya2JtYzogSW50cm9kdWNl
IExvb25nc29uLTJLIEJNQyBjb3JlIGRyaXZlcgo+ID4gICBtZmQ6IGxzMmtibWM6IEFkZCBMb29u
Z3Nvbi0ySyBCTUMgcmVzZXQgZnVuY3Rpb24gc3VwcG9ydAo+ID4gICBpcG1pOiBBZGQgTG9vbmdz
b24tMksgQk1DIHN1cHBvcnQKPiA+Cj4gPiAgZHJpdmVycy9jaGFyL2lwbWkvTWFrZWZpbGUgICAg
ICAgfCAgIDEgKwo+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2kuaCAgICAgIHwgICA3ICsK
PiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2ludGYuYyB8ICAgMyArCj4gPiAgZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9zaV9sczJrLmMgfCAxODkgKysrKysrKysrKysrCj4gPiAgZHJpdmVy
cy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgfCAgMTIgKwo+ID4gIGRyaXZlcnMvbWZkL01ha2Vm
aWxlICAgICAgICAgICAgIHwgICAyICsKPiA+ICBkcml2ZXJzL21mZC9sczJrYm1jLW1mZC5jICAg
ICAgICB8IDQ4NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgNyBmaWxlcyBj
aGFuZ2VkLCA2OTkgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX3NpX2xzMmsuYwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L21mZC9sczJrYm1jLW1mZC5jCj4gPgo+ID4KPiA+IGJhc2UtY29tbWl0OiBjZDJlMTAzZDU3ZTU2
MTVmOWJiMDI3ZDc3MmY5M2I5ZWZkNTY3MjI0Cj4gPiAtLQo+ID4gMi40Ny4xCj4gPgoKCi0tIApU
aGFua3MuCkJpbmJpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
