Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F40C59FF9EC
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Jan 2025 14:46:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTLWl-0000Yt-Qu;
	Thu, 02 Jan 2025 13:46:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1tTKjg-0001aR-LD
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jan 2025 12:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jXS24HNk/PcPkWyO7/S1209SrdCqek8Xs180xOiisVo=; b=mWrsFFNVtjqAN7y8UimX4XScsu
 hnFiPzJTDbgwi+9mpsg1kg6Nm0Ak56pdXNSmaQouXXg8eLrPpU5eqT4VtV46OWTKxwzkX/lWuXCNN
 64M8WXEHfZ1CLIbv0c/nOnSP2DWjzoLddLQjXGR8hozLzpeIr/6JgOd4qhkg9jC+u5QM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jXS24HNk/PcPkWyO7/S1209SrdCqek8Xs180xOiisVo=; b=Wqr/BNm3r0lf5LcIy70HgwfKSC
 AopFJh7EsG785Y2EagZlUzbjsnxBBBb97e21T1yTJB2TWODwzZ99wIb5kNOYYnEKn1eiZTcVBlal/
 Gu1Xjpl/Vg9yg2NgTA6gXGFwPXpG6kDVNKlUjrlCtjgfjJhWjfmQl20Sj5j3zlfZCoK0=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTKjg-0006aZ-2V for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jan 2025 12:55:36 +0000
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5d3f28881d6so16285447a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jan 2025 04:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1735822529; x=1736427329; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jXS24HNk/PcPkWyO7/S1209SrdCqek8Xs180xOiisVo=;
 b=PSI+ND9vyjGTSvxUhDzw/TVKQYHuoTaFZ2Zn0eMxMjP4eiAF3u5PDRZqbJGHBc6Vkd
 rG+BeNbLprrVlzspXWa/qipkANl4h8bVIxKuV0MMFab8DF+B7E8KAQ0XLNiZpL0u2DUo
 w+T+P+n0VhPwQ15zU+LH675h8dRwlQTwyGqM3xMkYkFVWTME/qLbUVACOUu2OLGidCQS
 ql7GFGWK6S8eNs1klskyMbqsgaAGvGEQSrdxSeeYgqEa0Sw3ulvxCyoZyKgUkPQZTg5q
 YEPNuWEypNs5Z3fu5g9XbcYY+uRgZAYfGjwUf+gmrNkdNziNJc+Baeid3YVYwfu5pHmu
 b1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735822529; x=1736427329;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jXS24HNk/PcPkWyO7/S1209SrdCqek8Xs180xOiisVo=;
 b=O/eXZwSz5vtQ+uQaGne9RbGsQsQea0N6KuJUvZR8o4gITy+kwrFVMblFifdN5FL7vs
 WXyv2AP7bSN7+Ed8BSREZeVRfY4SZvRDMchFJGvvmNE6BNvDvqic5Rr39++krEbBmwla
 6xo8DKL9iGqOFPwHp0QPByVMVLIfiWW3IX8Ttra60aqRz+fomPUX5oF22VmHoKfn+tA1
 /dl3qDQB6qepFsGOEKDTTZuAC+6lEToBfSTFgbXYf3jJlVtrTvii5maVQFjvmdl+oA/B
 uRI3w/j4Y6rVKiLFKsrG4G/C+igVXic+G51awgeUfVzhBNUIoZ6f7icPrrfeBUAaRbBo
 auPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0SqlYuMUtb2Wrvrxlh+JN+OK4YfDoXmpMcBlMv2Vq2NQC2DtuPKPBiX6bQz86+jxZ051ZKmz8zW+caR5iM5hU7vY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzTAs8AEMrhGfGTj+Yh2BOnLCGn0JkBOkxVT/X/0nwjwpJ0Mx/K
 aq56t6rFlfVEFOehGt0ZV9rm+6EVRTtOunq01qeOjy7gr1fjlEq5CnW6qgDHvHdOXZU0kPuj1Rn
 uElF2++/VcTp+Q7DlyqHCy8JY3i0=
X-Gm-Gg: ASbGnctoOoi+VqSn5tTx77iT0/wLu/X/Xy5ldI/0zVWr9GgvgaMHxaTHBSn6D5VxCwJ
 oZ2T3pw3KirO4qjgqkMluvKuK989ow/MGBdqugw==
X-Google-Smtp-Source: AGHT+IGLvuXj+dIrqlUzp0aOb3Z7mz1qVwkY++yurih/6Pd33sBtFEvkwwttWiJ3Nh2EseGJDAQCU7eALZPBZTPzrLo=
X-Received: by 2002:a05:6402:2802:b0:5d3:cff5:635e with SMTP id
 4fb4d7f45d1cf-5d81de065b8mr107382476a12.26.1735822529291; Thu, 02 Jan 2025
 04:55:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
In-Reply-To: <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 2 Jan 2025 20:55:17 +0800
Message-ID: <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas: Thanks for your reply. On Thu, Jan 2, 2025 at 5:07 PM
    Thomas Zimmermann wrote: > > Hi > > > Am 30.12.24 um 10:31 schrieb Binbin
    Zhou: > [...] > > + > > +static struct platform_driver ls2kbmc_platform_driver
    = { > > + .d [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.50 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.50 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.50 listed in wl.mailspike.net]
X-Headers-End: 1tTKjg-0006aZ-2V
X-Mailman-Approved-At: Thu, 02 Jan 2025 13:46:18 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 3/4] drm/ls2kbmc: Add support
 for Loongson-2K BMC display
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
Cc: Simona Vetter <simona@ffwll.ch>, Chong Qiao <qiaochong@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Lee Jones <lee@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Xuerui Wang <kernel@xen0n.name>, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVGhvbWFzOgoKVGhhbmtzIGZvciB5b3VyIHJlcGx5LgoKT24gVGh1LCBKYW4gMiwgMjAyNSBh
dCA1OjA34oCvUE0gVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+IHdyb3Rl
Ogo+Cj4gSGkKPgo+Cj4gQW0gMzAuMTIuMjQgdW0gMTA6MzEgc2NocmllYiBCaW5iaW4gWmhvdToK
PiBbLi4uXQo+ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGxzMmtibWNf
cGxhdGZvcm1fZHJpdmVyID0gewo+ID4gKyAgICAgLmRyaXZlciA9IHsKPiA+ICsgICAgICAgICAg
ICAgLm5hbWUgPSAibHMya2JtYy1mcmFtZWJ1ZmZlciIsCj4KPiBUaGUgZHJpdmVyIGlzIG1vc3Rs
eSBhIGNvcHkgb2Ygc2ltcGxlZHJtLiBXaHkgZG9uJ3QgeW91IHVzZQo+ICJzaW1wbGUtZnJhbWVi
dWZmZXIiIGZvciB5b3VyIGRldmljZSBuYW1lPyBZb3UgY291bGQgdXNlIHNpbXBsZWRybQo+IGRp
cmVjdGx5IHRoZW4uCgpBaCwgaW5kZWVkLCB0aGUgZHJpdmVyIGlzIGJhc2VkIG9uIHNpbXBsZWRy
bS4KCkluaXRpYWxseSwgSSBhbHNvIHRyaWVkIHRvIHVzZSBzaW1wbGVkcm0gZGlyZWN0bHksIGJ1
dCBpdCB3aWxsIGZhaWwgaW4KZHJtIG1lbW9yeSBhY3F1aXJlLgpCZWNhdXNlIGFsdGhvdWdoIHdl
IHJlZ2lzdGVyIHRoZSBkcml2ZXIgaW4gcGxhdGZvcm0gZm9ybSwgaXRzIG1lbW9yeQpiZWxvbmdz
IHRvIHBjaSBzcGFjZSBhbmQgd2UgY2FuIHNlZSB0aGUgY29ycmVzcG9uZGluZyBwY2kgcHJvYmUg
YW5kCnJlc291cmNlIGFsbG9jYXRpb24gaW4gUGF0Y2gtMS4KVGhlcmVmb3JlLCB3ZSBuZWVkIHRv
IHVzZSBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3RpbmdfcGNpX2RldmljZXMoKS4KCkFsc28sIHNp
bmNlIHdlIGFyZSB1c2luZyBCTUMgZGlzcGxheSwgdGhlIGRpc3BsYXkgd2lsbCBiZSBkaXNjb25u
ZWN0ZWQKd2hlbiBCTUMgcmVzZXQsIGF0IHRoaXMgdGltZSB3ZSBuZWVkIHRvIHB1c2ggdGhlIGRp
c3BsYXkgZGF0YSAoY3J0YywKY29ubmVjdG9yLCBldGMuKSBtYW51YWxseSBhcyBzaG93biBpbiBQ
YXRjaC00LgoKUHJvYmFibHkgaXQncyBub3QgdGhlIG1vc3Qgc3VpdGFibGUgd2F5IHRvIGltcGxl
bWVudCBpdC4KCj4KPiBCZXN0IHJlZ2FyZHMKPiBUaG9tYXMKPgo+ID4gKyAgICAgfSwKPiA+ICsg
ICAgIC5wcm9iZSA9IGxzMmtibWNfcHJvYmUsCj4gPiArICAgICAucmVtb3ZlID0gbHMya2JtY19y
ZW1vdmUsCj4gPiArfTsKPiA+ICsKPiA+ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGxzMmtibWNf
cGxhdGZvcm1fZHJpdmVyKTsKPiA+ICsKPiA+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkRSTSBkcml2
ZXIgZm9yIExvb25nc29uLTJLIEJNQyIpOwo+ID4gK01PRFVMRV9MSUNFTlNFKCJHUEwiKTsKPgo+
IC0tCj4gLS0KPiBUaG9tYXMgWmltbWVybWFubgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIK
PiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPiBGcmFua2Vuc3RyYXNzZSAx
NDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQo+IEdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVy
cywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4KPiBIUkIgMzY4MDkgKEFHIE51ZXJu
YmVyZykKPgoKCi0tIApUaGFua3MuCkJpbmJpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3Bl
bmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
