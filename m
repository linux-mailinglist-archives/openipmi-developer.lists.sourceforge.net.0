Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E9BA309EA
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Feb 2025 12:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1thoR1-0003F8-1z;
	Tue, 11 Feb 2025 11:28:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1thoQz-0003F2-Pa
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Feb 2025 11:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0yMHczjz8M9kD6dwWyu3+PHY3YM20OwKcyo4SL8AFQ=; b=J1uww4HWg29QmZQ9adgBGRggvj
 +E/H88mHAWK0V8tHUSHWfvalvfJhcOf4e5zYO1a7UZbiHH8dfyjtXsyTSktTUeK36NuIIguF8RA0a
 rLjQJK2kTye6WLkVmOBzxEpNjf+SuF+iE4YsTEbzdVdNKx4xuJYZcmDLFx40F1ksqLRk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G0yMHczjz8M9kD6dwWyu3+PHY3YM20OwKcyo4SL8AFQ=; b=hJCZAZum6fvrCRSkFEwiMzM3Cp
 3cSTOa0vm9nzJZp9HcwGz9Qdew0y4ncrpzqbSZJ+VvjQ6sGOZnmw1q2DDpnsLBs4i1eiT3Tb7Xe7Z
 7u/8vd8CdOp+QaNb4z/W+SZO92rS1ZNf0/dguVCq/ipOeyOLoNYHNTW9N0cAN01/ICA0=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1thoQx-0005Mh-Rf for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Feb 2025 11:28:09 +0000
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5de4d4adac9so7548122a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Feb 2025 03:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739273276; x=1739878076; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=G0yMHczjz8M9kD6dwWyu3+PHY3YM20OwKcyo4SL8AFQ=;
 b=njwGkLPBctt8I67hPNtyh9in5M30SBbfkQb6pBEwJPNNz01w76DqyzU742e8R7Rk4N
 MaemrzahQqaNo4T0n8ebQQjPQTyxT57Qve5FhoNRPBfUfguS3DPKJyisfNYqpPB/GdLQ
 mFgGlfQ3X0KSEQCRrXcX+1veRfHjwExMGAxqWSRukOzMqQDZnPgjU2BzWFem2c/9iQ3X
 RlVNOkStt2uV1MhzP0oz4YfYjW45PuhHdNA/vhzdTC4Z5rOVRtPltTnmbpNyllIjQuHi
 oecHieOMyqPid8tUl4tvAcdqpxFqtCqs0ZzVwYV1bmOyufVLB17lCQpSahoMnqowWLN3
 ClAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739273276; x=1739878076;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=G0yMHczjz8M9kD6dwWyu3+PHY3YM20OwKcyo4SL8AFQ=;
 b=W/1tQDH2orlebj+k2twQdsBd6EdVHxAgzZQWelXBEjLD7ptAznqkcNrlhgbuHS1JK+
 i/LmXi9TxA+zbIyeENMskb8nuGoSEwlM4bzks0eoAewobAc5cwUzDxj0L48A+CO2wxZS
 iw1qFR6SxVs+orMYa/BjjLoBdPOo8NeAdBVY3W9zxAdEUOzL0DWGjGmR6RWbZW1mnhik
 67H/CgVicFAmcOO3m9A/EJJO6Kf9qnj7eNA8xgUQ/SZ88rp9GXOckZII78yCeTV2eLyP
 OuCZxPaG0s5/V4De+RJRKLo+ufne53xD4QlHIuMkb3k0KHkEohGMExIzPEUuqHXm1l5w
 Dyig==
X-Forwarded-Encrypted: i=1;
 AJvYcCX253srE6kiLKkziV8lZi2oBHv400e2fuCRAuMeKsPnjI5F9LG5quNhLhmmifXbXyC8lgLJUi/DMBAb/EracmiGsFk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyPL3Yh+u5v74jkhUUzFFSYGwVb1srnRTFkuqC8l0eidqn+/672
 P0ERQgIouiucWzcLL1Ss/XkaFlc9xh+SvSbPxVsUVq4I0b8WIrUUnmO+PsHUtKrSK969rvPpILa
 RCBGruM9Cgr/6egNtpacLK8R3CwY=
X-Gm-Gg: ASbGncs9RB82O41AmOIEBHZ9JlzRabmLoKiKWvcXlGkgQEJeRY+kMasJ5qNjK8ZOeI1
 xej4rIKC4iYj/8U8XmFl9UYQVOuEW2mNOCeURB49SElq/gq5GE++drsdj4G65R7++oTfAXvzaCb
 Y=
X-Google-Smtp-Source: AGHT+IF/SQVLZlgYt2+kB9r9R4LA1zqr/LChdnFtMSz0wxkL0L5rvVMAk3aiu3/dSl4kO9IZg3mx5jZig4rDe7Du2GU=
X-Received: by 2002:a05:6402:26cf:b0:5dc:7f96:6244 with SMTP id
 4fb4d7f45d1cf-5de45089cddmr17334738a12.23.1739273275913; Tue, 11 Feb 2025
 03:27:55 -0800 (PST)
MIME-Version: 1.0
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <b0ac8b81fbb8955ed8ada27aba423cff45aad9f6.1735550269.git.zhoubinbin@loongson.cn>
 <f365c722-c294-4834-8c84-fd6dcd4a9ee9@suse.de>
In-Reply-To: <f365c722-c294-4834-8c84-fd6dcd4a9ee9@suse.de>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 11 Feb 2025 17:27:40 +0600
X-Gm-Features: AWEUYZnb3dscGNJT9s6G1vg-Vy1f7oqZw8j1Zx2LxLMDaKaNlEv-csOyPVmBwJ8
Message-ID: <CAMpQs4JXKu4GDD79Mdkq9vASSDE_5SQsjsg4htfaZ5yGm3=k5g@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas: Sorry for my late reply and thanks for your advice.
    On Wed, Jan 15, 2025 at 2:57 PM Thomas Zimmermann wrote: > > Hi > > > Am
    30.12.24 um 10:31 schrieb Binbin Zhou: > > Since the display is a sub-function
    of the Loongson-2K BMC, when the > > BMC res [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.208.50 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.208.50 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.50 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [zhoubb.aaron[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1thoQx-0005Mh-Rf
Subject: Re: [Openipmi-developer] [PATCH v1 4/4] drm/ls2kbmc: Add
 Loongson-2K BMC reset function support
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

SGkgVGhvbWFzOgoKU29ycnkgZm9yIG15IGxhdGUgcmVwbHkgYW5kIHRoYW5rcyBmb3IgeW91ciBh
ZHZpY2UuCgpPbiBXZWQsIEphbiAxNSwgMjAyNSBhdCAyOjU34oCvUE0gVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+IHdyb3RlOgo+Cj4gSGkKPgo+Cj4gQW0gMzAuMTIuMjQg
dW0gMTA6MzEgc2NocmllYiBCaW5iaW4gWmhvdToKPiA+IFNpbmNlIHRoZSBkaXNwbGF5IGlzIGEg
c3ViLWZ1bmN0aW9uIG9mIHRoZSBMb29uZ3Nvbi0ySyBCTUMsIHdoZW4gdGhlCj4gPiBCTUMgcmVz
ZXQsIHRoZSBlbnRpcmUgQk1DIFBDSWUgaXMgZGlzY29ubmVjdGVkLCBpbmNsdWRpbmcgdGhlIGRp
c3BsYXkKPiA+IHdoaWNoIGlzIGludGVycnVwdGVkLgo+Cj4gVG8gbWUsIHRoYXQncyBhIHN0cm9u
ZyBpbmRpY2F0b3IgdG8gc2V0IHVwIHRoZSBlbnRpcmUgdGhpbmcgZnJvbSBzY3JhdGNoLgo+Cj4g
Pgo+ID4gTm90IG9ubHkgZG8geW91IG5lZWQgdG8gc2F2ZS9yZXN0b3JlIHRoZSByZWxldmFudCBQ
Q0llIHJlZ2lzdGVycwo+ID4gdGhyb3VnaG91dCB0aGUgcmVzZXQgcHJvY2VzcywgYnV0IHlvdSBh
bHNvIG5lZWQgdG8gcmUtcHVzaCB0aGUgZGlzcGxheQo+ID4gdG8gdGhlIG1vbml0b3IgYXQgdGhl
IGVuZC4KPiA+Cj4gPiBDby1kZXZlbG9wZWQtYnk6IENob25nIFFpYW8gPHFpYW9jaG9uZ0Bsb29u
Z3Nvbi5jbj4KPiA+IFNpZ25lZC1vZmYtYnk6IENob25nIFFpYW8gPHFpYW9jaG9uZ0Bsb29uZ3Nv
bi5jbj4KPiA+IFNpZ25lZC1vZmYtYnk6IEJpbmJpbiBaaG91IDx6aG91YmluYmluQGxvb25nc29u
LmNuPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS90aW55L2xzMmtibWMuYyB8IDI4NCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDI4
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS90aW55L2xzMmtibWMuYyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L2xzMmtibWMu
Ywo+ID4gaW5kZXggOTA5ZDZjNjg3MTkzLi40YjQ0MGYyMGNiNGQgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vdGlueS9sczJrYm1jLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90
aW55L2xzMmtibWMuYwo+Cj4gTW92ZSBhbGwgdGhlIHJlc2V0IGRldGVjdGlvbiBpbnRvIHRoZSBC
TUMgY29yZSBkcml2ZXIuIFdoZW4geW91IHNlZSBhCj4gcmVzZXQsIHJlbW92ZSB0aGUgZGlzcGxh
eSdzIHBsYXRmb3JtIGRldmljZSB2aWEKPiBwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcigpLiBU
aGlzIHdpbGwgcmVsZWFzZSB0aGUgZGV2aWNlICBhbmQgdGhlIERSTQo+IGRyaXZlciBvbiB0b3Au
IFdlIGRvIHRoaXMgZm9yIHNpbXBsZWRybS9lZmlmYi9ldGMuIEhlbmNlIHVzZXItc3BhY2UgY29k
ZQo+IGlzIGFibGUgdG8gZGVhbCB3aXRoIGl0LiBUaGVuIHNldCB1cCBhIG5ldyBwbGF0Zm9ybSBk
ZXZpY2Ugd2hlbiB0aGUgbmV3Cj4gZnJhbWVidWZmZXIgaXMgYXZhaWxhYmxlLiBZb3VyIERSTSBk
cml2ZXIgd2lsbCBiaW5kIHRvIGl0IGFuZCB1c2VyLXNwYWNlCj4gY29kZSB3aWxsIGNvbnRpbnVl
IHdpdGggdGhlIG5ldyBEUk0gZGV2aWNlLgoKSSB0cmllZCB0byByZWZhY3RvciB0aGUgYm1jIHJl
c3RhcnQgcGFydCBhY2NvcmRpbmcgdG8geW91ciBzY2hlbWUuIEknbQpub3QgcXVpdGUgc3VyZSBp
ZiB0aGUgZXhwZXJpbWVudGFsIHJlc3VsdHMgYXJlIGV4YWN0bHkgcmlnaHQuCgpLZXkgcGFydDoK
Ck5ldyBzb2x1dGlvbjoKMS4gcGxhdGZvcm1fZGV2aWNlX3VucmVnaXN0ZXIoc2ltcGxlZHJtKQoy
LiB3YWl0IGFuZCBkZXRlY3QgaWYgdGhlIEJNQyByZWJvb3QgaXMgY29tcGxldGU7CjMuIHBsYXRm
b3JtX2RldmljZV9yZWdpc3Rlcl9yZXNuZGF0YShzaW1wbGVkcm0pCgpPcmlnaW5hbCBzb2x1dGlv
bjoKMS4gd2FpdCBhbmQgZGV0ZWN0IGlmIHRoZSBCTUMgcmVib290IGlzIGNvbXBsZXRlOwoyLiBs
czJrYm1jX3B1c2hfZHJtX21vZGUoKSBwdXNoZXMgZGlzcGxheSBkYXRhIHN1Y2ggYXMgY3J0Yy4K
CldoZW4gdGhlIEJNQyByZWJvb3QgaXMgY29tcGxldGVkLCB0aGUgZGlzcGxheSBpbiB0aGUgbmV3
IHNvbHV0aW9uIHdpbGwKbG9zZSBhbGwgdGhlIGluZm9ybWF0aW9uIG9mIHRoZSBwcmV2aW91cyBk
ZXNrdG9wIGFuZCByZWRpc3BsYXkgdGhlCnN5c3RlbSBsb2dpbiBpbnRlcmZhY2UsIHdoaWxlIHRo
ZSBvcmlnaW5hbCBzb2x1dGlvbiB3aWxsIGtlZXAgdGhlCmRlc2t0b3AgaW5mb3JtYXRpb24uCgpJ
cyB0aGlzIG5vcm1hbCBmb3Igb3VyIG5ldyBzb2x1dGlvbiwgb3IgaXMgdGhlcmUgc29tZXRoaW5n
IHdyb25nIHdpdGgKbXkgaW1wbGVtZW50YXRpb24/Cgo+Cj4gQmVzdCByZWdhcmRzCj4gVGhvbWFz
Cj4KPiA+IEBAIC04LDEwICs4LDEyIEBACj4gPiAgICAqLwo+ID4KPiA+ICAgI2luY2x1ZGUgPGxp
bnV4L2FwZXJ0dXJlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gPiAgICNpbmNs
dWRlIDxsaW51eC9taW5tYXguaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgo+ID4gICAj
aW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGF0YS9zaW1wbGVmYi5oPgo+ID4gICAjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3N0b3BfbWFjaGlu
ZS5oPgo+ID4KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+Cj4gPiAgICNpbmNsdWRl
IDxkcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaD4KPiA+IEBAIC0zMiw5ICszNCwyNyBAQAo+
ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9wYW5pYy5oPgo+ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9w
cm9iZV9oZWxwZXIuaD4KPiA+Cj4gPiArI2RlZmluZSBCTUNfUkVTRVRfREVMQVkgICAgICAoNjAg
KiBIWikKPiA+ICsjZGVmaW5lIEJNQ19SRVNFVF9XQUlUICAgICAgIDEwMDAwCj4gPiArCj4gPiAr
c3RhdGljIGNvbnN0IHUzMiBpbmRleFtdID0geyAweDQsIDB4MTAsIDB4MTQsIDB4MTgsIDB4MWMs
IDB4MjAsIDB4MjQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAweDMwLCAweDNjLCAw
eDU0LCAweDU4LCAweDc4LCAweDdjLCAweDgwIH07Cj4gPiArc3RhdGljIGNvbnN0IHUzMiBjaW5k
ZXhbXSA9IHsgMHg0LCAweDEwLCAweDNjIH07Cj4gPiArCj4gPiArc3RydWN0IGxzMmtibWNfcGNp
X2RhdGEgewo+ID4gKyAgICAgdTMyIGQ4MGM7Cj4gPiArICAgICB1MzIgZDcxYzsKPiA+ICsgICAg
IHUzMiBkYXRhWzE0XTsKPiA+ICsgICAgIHUzMiBjZGF0YVszXTsKPiA+ICt9Owo+ID4gKwo+ID4g
ICBzdHJ1Y3QgbHMya2JtY19wZGF0YSB7Cj4gPiAgICAgICBzdHJ1Y3QgcGNpX2RldiAqcGRldjsK
PiA+ICsgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2Owo+ID4gKyAgICAgc3RydWN0IHdvcmtf
c3RydWN0IGJtY193b3JrOwo+ID4gKyAgICAgdW5zaWduZWQgbG9uZyByZXNldF90aW1lOwo+ID4g
ICAgICAgc3RydWN0IHNpbXBsZWZiX3BsYXRmb3JtX2RhdGEgcGQ7Cj4gPiArICAgICBzdHJ1Y3Qg
bHMya2JtY19wY2lfZGF0YSBwY2lfZGF0YTsKPiA+ICAgfTsKPiA+Cj4gPiAgIC8qCj4gPiBAQCAt
NTgzLDYgKzYwMywyNjUgQEAgc3RhdGljIHN0cnVjdCBsczJrYm1jX2RldmljZSAqbHMya2JtY19k
ZXZpY2VfY3JlYXRlKHN0cnVjdCBkcm1fZHJpdmVyICpkcnYsCj4gPiAgICAgICByZXR1cm4gc2Rl
djsKPiA+ICAgfQo+ID4KPiA+ICtzdGF0aWMgYm9vbCBsczJrYm1jX2JhcjBfYWRkcl9pc19zZXQo
c3RydWN0IHBjaV9kZXYgKnBwZGV2KQo+ID4gK3sKPiA+ICsgICAgIHUzMiBhZGRyOwo+ID4gKwo+
ID4gKyAgICAgcGNpX3JlYWRfY29uZmlnX2R3b3JkKHBwZGV2LCBQQ0lfQkFTRV9BRERSRVNTXzAs
ICZhZGRyKTsKPiA+ICsgICAgIGFkZHIgJj0gUENJX0JBU0VfQUREUkVTU19NRU1fTUFTSzsKPiA+
ICsKPiA+ICsgICAgIHJldHVybiBhZGRyID8gdHJ1ZSA6IGZhbHNlOwo+ID4gK30KPiA+ICsKPiA+
ICtzdGF0aWMgdm9pZCBsczJrYm1jX3NhdmVfcGNpX2RhdGEoc3RydWN0IGxzMmtibWNfcGRhdGEg
KnByaXYpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBwcml2LT5wZGV2
Owo+ID4gKyAgICAgc3RydWN0IHBjaV9kZXYgKnBhcmVudCA9IHBkZXYtPmJ1cy0+c2VsZjsKPiA+
ICsgICAgIGludCBpOwo+ID4gKwo+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUo
aW5kZXgpOyBpKyspCj4gPiArICAgICAgICAgICAgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwYXJl
bnQsIGluZGV4W2ldLCAmcHJpdi0+cGNpX2RhdGEuZGF0YVtpXSk7Cj4gPiArCj4gPiArICAgICBm
b3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShjaW5kZXgpOyBpKyspCj4gPiArICAgICAgICAgICAg
IHBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBjaW5kZXhbaV0sICZwcml2LT5wY2lfZGF0YS5j
ZGF0YVtpXSk7Cj4gPiArCj4gPiArICAgICBwY2lfcmVhZF9jb25maWdfZHdvcmQocGFyZW50LCAw
eDgwYywgJnByaXYtPnBjaV9kYXRhLmQ4MGMpOwo+ID4gKyAgICAgcHJpdi0+cGNpX2RhdGEuZDgw
YyA9IChwcml2LT5wY2lfZGF0YS5kODBjICYgfigzIDw8IDE3KSkgfCAoMSA8PCAxNyk7Cj4gPiAr
Cj4gPiArICAgICBwY2lfcmVhZF9jb25maWdfZHdvcmQocGFyZW50LCAweDcxYywgJnByaXYtPnBj
aV9kYXRhLmQ3MWMpOwo+ID4gKyAgICAgcHJpdi0+cGNpX2RhdGEuZDcxYyB8PSAxIDw8IDI2Owo+
ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgYm9vbCBsczJrYm1jX2NoZWNrX3BjaWVfY29ubmVjdGVk
KHN0cnVjdCBwY2lfZGV2ICpwYXJlbnQsIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiArewo+
ID4gKyAgICAgdm9pZCBfX2lvbWVtICptbWlvOwo+ID4gKyAgICAgaW50IHN0cywgdGltZW91dCA9
IDEwMDAwOwo+ID4gKwo+ID4gKyAgICAgbW1pbyA9IHBjaV9pb21hcChwYXJlbnQsIDAsIDB4MTAw
KTsKPiA+ICsgICAgIGlmICghbW1pbykKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+
ID4gKwo+ID4gKyAgICAgd3JpdGVsKHJlYWRsKG1taW8pIHwgMHg4LCBtbWlvKTsKPiA+ICsgICAg
IHdoaWxlICh0aW1lb3V0KSB7Cj4gPiArICAgICAgICAgICAgIHN0cyA9IHJlYWRsKG1taW8gKyAw
eGMpOwo+ID4gKyAgICAgICAgICAgICBpZiAoKHN0cyAmIDB4MTEpID09IDB4MTEpCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAgICAgIG1kZWxheSgxKTsKPiA+
ICsgICAgICAgICAgICAgdGltZW91dC0tOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcGNp
X2lvdW5tYXAocGFyZW50LCBtbWlvKTsKPiA+ICsKPiA+ICsgICAgIGlmICghdGltZW91dCkgewo+
ID4gKyAgICAgICAgICAgICBkcm1fZXJyKGRldiwgInBjaWUgdHJhaW4gZmFpbGVkIHN0YXR1cz0w
eCV4XG4iLCBzdHMpOwo+ID4gKyAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gPiArICAgICB9
Cj4gPiArCj4gPiArICAgICByZXR1cm4gdHJ1ZTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGlu
dCBsczJrYm1jX3JlY292ZV9wY2lfZGF0YSh2b2lkICpkYXRhKQo+ID4gK3sKPiA+ICsgICAgIHN0
cnVjdCBsczJrYm1jX3BkYXRhICpwcml2ID0gZGF0YTsKPiA+ICsgICAgIHN0cnVjdCBwY2lfZGV2
ICpwZGV2ID0gcHJpdi0+cGRldjsKPiA+ICsgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBw
cml2LT5kZGV2Owo+ID4gKyAgICAgc3RydWN0IHBjaV9kZXYgKnBhcmVudCA9IHBkZXYtPmJ1cy0+
c2VsZjsKPiA+ICsgICAgIHUzMiBpLCB0aW1lb3V0LCByZXRyeSA9IDA7Cj4gPiArICAgICBib29s
IHJlYWR5Owo+ID4gKwo+ID4gKyAgICAgcGNpX3dyaXRlX2NvbmZpZ19kd29yZChwYXJlbnQsIFBD
SV9CQVNFX0FERFJFU1NfMiwgMCk7Cj4gPiArICAgICBwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBh
cmVudCwgUENJX0JBU0VfQUREUkVTU18zLCAwKTsKPiA+ICsgICAgIHBjaV93cml0ZV9jb25maWdf
ZHdvcmQocGFyZW50LCBQQ0lfQkFTRV9BRERSRVNTXzQsIDApOwo+ID4gKwo+ID4gKyAgICAgdGlt
ZW91dCA9IDEwMDAwOwo+ID4gKyAgICAgd2hpbGUgKHRpbWVvdXQpIHsKPiA+ICsgICAgICAgICAg
ICAgcmVhZHkgPSBsczJrYm1jX2JhcjBfYWRkcl9pc19zZXQocGFyZW50KTsKPiA+ICsgICAgICAg
ICAgICAgaWYgKCFyZWFkeSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsg
ICAgICAgICAgICAgbWRlbGF5KDEpOwo+ID4gKyAgICAgICAgICAgICB0aW1lb3V0LS07Cj4gPiAr
ICAgICB9Owo+ID4gKwo+ID4gKyAgICAgaWYgKCF0aW1lb3V0KQo+ID4gKyAgICAgICAgICAgICBk
cm1fd2FybihkZXYsICJiYXIgbm90IGNsZWFyIDBcbiIpOwo+ID4gKwo+ID4gK3JldHJhaW46Cj4g
PiArICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShpbmRleCk7IGkrKykKPiA+ICsgICAg
ICAgICAgICAgcGNpX3dyaXRlX2NvbmZpZ19kd29yZChwYXJlbnQsIGluZGV4W2ldLCBwcml2LT5w
Y2lfZGF0YS5kYXRhW2ldKTsKPiA+ICsKPiA+ICsgICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQo
cGFyZW50LCAweDgwYywgcHJpdi0+cGNpX2RhdGEuZDgwYyk7Cj4gPiArICAgICBwY2lfd3JpdGVf
Y29uZmlnX2R3b3JkKHBhcmVudCwgMHg3MWMsIHByaXYtPnBjaV9kYXRhLmQ3MWMpOwo+ID4gKwo+
ID4gKyAgICAgLyogQ2hlY2sgaWYgdGhlIHBjaWUgaXMgY29ubmVjdGVkICovCj4gPiArICAgICBy
ZWFkeSA9IGxzMmtibWNfY2hlY2tfcGNpZV9jb25uZWN0ZWQocGFyZW50LCBkZXYpOwo+ID4gKyAg
ICAgaWYgKCFyZWFkeSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJlYWR5Owo+ID4gKwo+ID4g
KyAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2luZGV4KTsgaSsrKQo+ID4gKyAgICAg
ICAgICAgICBwY2lfd3JpdGVfY29uZmlnX2R3b3JkKHBkZXYsIGNpbmRleFtpXSwgcHJpdi0+cGNp
X2RhdGEuY2RhdGFbaV0pOwo+ID4gKwo+ID4gKyAgICAgZHJtX2luZm8oZGV2LCAicGNpZSByZWNv
dmVyZWQgZG9uZVxuIik7Cj4gPiArCj4gPiArICAgICBpZiAoIXJldHJ5KSB7Cj4gPiArICAgICAg
ICAgICAgIC8qd2FpdCB1LWJvb3QgZGRyIGNvbmZpZyAqLwo+ID4gKyAgICAgICAgICAgICBtZGVs
YXkoQk1DX1JFU0VUX1dBSVQpOwo+ID4gKyAgICAgICAgICAgICByZWFkeSA9IGxzMmtibWNfYmFy
MF9hZGRyX2lzX3NldChwYXJlbnQpOwo+ID4gKyAgICAgICAgICAgICBpZiAoIXJlYWR5KSB7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgcmV0cnkgPSAxOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gcmV0cmFpbjsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKyAgICAgfQo+ID4gKwo+
ID4gKyAgICAgcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgbHMya2JtY19w
dXNoX2RybV9tb2RlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiArewo+ID4gKyAgICAgc3Ry
dWN0IGxzMmtibWNfZGV2aWNlICpzZGV2ID0gbHMya2JtY19kZXZpY2Vfb2ZfZGV2KGRldik7Cj4g
PiArICAgICBzdHJ1Y3QgZHJtX2NydGMgKmNydGMgPSAmc2Rldi0+Y3J0YzsKPiA+ICsgICAgIHN0
cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gY3J0Yy0+cHJpbWFyeTsKPiA+ICsgICAgIHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSAmc2Rldi0+Y29ubmVjdG9yOwo+ID4gKyAgICAgc3Ry
dWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBOVUxMOwo+ID4gKyAgICAgc3RydWN0IGRybV9tb2Rl
X3NldCBzZXQ7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4Owo+
ID4gKyAgICAgaW50IHJldDsKPiA+ICsKPiA+ICsgICAgIG11dGV4X2xvY2soJmRldi0+bW9kZV9j
b25maWcubXV0ZXgpOwo+ID4gKyAgICAgY29ubmVjdG9yLT5mdW5jcy0+ZmlsbF9tb2Rlcyhjb25u
ZWN0b3IsIDQwOTYsIDQwOTYpOwo+ID4gKyAgICAgbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29u
ZmlnLm11dGV4KTsKPiA+ICsKPiA+ICsgICAgIERSTV9NT0RFU0VUX0xPQ0tfQUxMX0JFR0lOKGRl
diwgY3R4LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX01PREVTRVRf
QUNRVUlSRV9JTlRFUlJVUFRJQkxFLCByZXQpOwo+ID4gKwo+ID4gKyAgICAgaWYgKHBsYW5lLT5z
dGF0ZSkKPiA+ICsgICAgICAgICAgICAgZmIgPSBwbGFuZS0+c3RhdGUtPmZiOwo+ID4gKyAgICAg
ZWxzZQo+ID4gKyAgICAgICAgICAgICBmYiA9IHBsYW5lLT5mYjsKPiA+ICsKPiA+ICsgICAgIGlm
ICghZmIpIHsKPiA+ICsgICAgICAgICAgICAgZHJtX2RiZyhkZXYsICJDUlRDIGRvZXNuJ3QgaGF2
ZSBjdXJyZW50IEZCXG4iKTsKPiA+ICsgICAgICAgICAgICAgcmV0ID0gLUVJTlZBTDsKPiA+ICsg
ICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICBkcm1fZnJh
bWVidWZmZXJfZ2V0KGZiKTsKPiA+ICsKPiA+ICsgICAgIHNldC5jcnRjID0gY3J0YzsKPiA+ICsg
ICAgIHNldC54ID0gMDsKPiA+ICsgICAgIHNldC55ID0gMDsKPiA+ICsgICAgIHNldC5tb2RlID0g
JnNkZXYtPm1vZGU7Cj4gPiArICAgICBzZXQuY29ubmVjdG9ycyA9ICZjb25uZWN0b3I7Cj4gPiAr
ICAgICBzZXQubnVtX2Nvbm5lY3RvcnMgPSAxOwo+ID4gKyAgICAgc2V0LmZiID0gZmI7Cj4gPiAr
Cj4gPiArICAgICByZXQgPSBjcnRjLT5mdW5jcy0+c2V0X2NvbmZpZygmc2V0LCAmY3R4KTsKPiA+
ICsKPiA+ICtvdXQ6Cj4gPiArICAgICBEUk1fTU9ERVNFVF9MT0NLX0FMTF9FTkQoZGV2LCBjdHgs
IHJldCk7Cj4gPiArCj4gPiArICAgICByZXR1cm4gcmV0Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0
aWMgdm9pZCBsczJrYm1jX2V2ZW50c19mbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gPiAr
ewo+ID4gKyAgICAgc3RydWN0IGxzMmtibWNfcGRhdGEgKnByaXYgPSBjb250YWluZXJfb2Yod29y
aywgc3RydWN0IGxzMmtibWNfcGRhdGEsIGJtY193b3JrKTsKPiA+ICsKPiA+ICsgICAgIC8qCj4g
PiArICAgICAgKiBUaGUgcGNpZSBpcyBsb3N0IHdoZW4gdGhlIEJNQyByZXNldHMsCj4gPiArICAg
ICAgKiBhdCB3aGljaCBwb2ludCBhY2Nlc3MgdG8gdGhlIHBjaWUgZnJvbSBvdGhlciBDUFVzCj4g
PiArICAgICAgKiBpcyBzdXNwZW5kZWQgdG8gcHJldmVudCBhIGNyYXNoLgo+ID4gKyAgICAgICov
Cj4gPiArICAgICBzdG9wX21hY2hpbmUobHMya2JtY19yZWNvdmVfcGNpX2RhdGEsIHByaXYsIE5V
TEwpOwo+ID4gKwo+ID4gKyAgICAgZHJtX2luZm8ocHJpdi0+ZGRldiwgInJlZHJhdyBjb25zb2xl
XG4iKTsKPiA+ICsKPiA+ICsgICAgIC8qIFdlIG5lZWQgdG8gcmUtcHVzaCB0aGUgZGlzcGxheSBk
dWUgdG8gcHJldmlvdXMgcGNpZSBsb3NzLiAqLwo+ID4gKyAgICAgbHMya2JtY19wdXNoX2RybV9t
b2RlKHByaXYtPmRkZXYpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbHMy
a2JtY19pbnRlcnJ1cHQoaW50IGlycSwgdm9pZCAqYXJnKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVj
dCBsczJrYm1jX3BkYXRhICpwcml2ID0gYXJnOwo+ID4gKwo+ID4gKyAgICAgaWYgKHN5c3RlbV9z
dGF0ZSAhPSBTWVNURU1fUlVOTklORykKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIElSUV9IQU5E
TEVEOwo+ID4gKwo+ID4gKyAgICAgLyogc2tpcCBpbnRlcnJ1cHQgaW4gQk1DX1JFU0VUX0RFTEFZ
ICovCj4gPiArICAgICBpZiAodGltZV9hZnRlcihqaWZmaWVzLCBwcml2LT5yZXNldF90aW1lICsg
Qk1DX1JFU0VUX0RFTEFZKSkKPiA+ICsgICAgICAgICAgICAgc2NoZWR1bGVfd29yaygmcHJpdi0+
Ym1jX3dvcmspOwo+ID4gKwo+ID4gKyAgICAgcHJpdi0+cmVzZXRfdGltZSA9IGppZmZpZXM7Cj4g
PiArCj4gPiArICAgICByZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gPiArfQo+ID4gKwo+ID4gKyNkZWZp
bmUgQk1DX1JFU0VUX0dQSU8gICAgICAgICAgICAgICAgICAgICAgIDE0Cj4gPiArI2RlZmluZSBM
T09OR1NPTl9HUElPX1JFR19CQVNFICAgICAgICAgICAgICAgMHgxZmUwMDUwMAo+ID4gKyNkZWZp
bmUgTE9PTkdTT05fR1BJT19SRUdfU0laRSAgICAgICAgICAgICAgIDB4MTgKPiA+ICsjZGVmaW5l
IExPT05HU09OX0dQSU9fT0VOICAgICAgICAgICAgMHgwCj4gPiArI2RlZmluZSBMT09OR1NPTl9H
UElPX0ZVTkMgICAgICAgICAgIDB4NAo+ID4gKyNkZWZpbmUgTE9PTkdTT05fR1BJT19JTlRQT0wg
ICAgICAgICAweDEwCj4gPiArI2RlZmluZSBMT09OR1NPTl9HUElPX0lOVEVOICAgICAgICAgIDB4
MTQKPiA+ICsKPiA+ICsvKiBUaGUgZ3BpbyBpbnRlcnJ1cHQgaXMgYSB3YXRjaGRvZyBpbnRlcnJ1
cHQgdGhhdCBpcyB0cmlnZ2VyZWQgd2hlbiB0aGUgQk1DIHJlc2V0cy4gKi8KPiA+ICtzdGF0aWMg
aW50IGxzMmtibWNfZ3Bpb19yZXNldF9oYW5kbGVyKHN0cnVjdCBsczJrYm1jX3BkYXRhICpwcml2
KQo+ID4gK3sKPiA+ICsgICAgIGludCBpcnEsIHJldCA9IDA7Cj4gPiArICAgICBpbnQgZ3NpID0g
MTYgKyAoQk1DX1JFU0VUX0dQSU8gJiA3KTsKPiA+ICsgICAgIHZvaWQgX19pb21lbSAqZ3Bpb19i
YXNlOwo+ID4gKwo+ID4gKyAgICAgLyogU2luY2UgTG9vbmdzb24tM0EgaGFyZHdhcmUgZG9lcyBu
b3Qgc3VwcG9ydCBHUElPIGludGVycnVwdCBjYXNjYWRlLAo+ID4gKyAgICAgICogY2hpcC0+Z3Bp
b190b19pcnEoKSBjYW5ub3QgYmUgaW1wbGVtZW50ZWQsCj4gPiArICAgICAgKiBoZXJlIGFjcGlf
cmVnaXN0ZXJfZ3NpKCkgaXMgdXNlZCB0byBnZXQgZ3BpbyBpcnEuCj4gPiArICAgICAgKi8KPiA+
ICsgICAgIGlycSA9IGFjcGlfcmVnaXN0ZXJfZ3NpKE5VTEwsIGdzaSwgQUNQSV9FREdFX1NFTlNJ
VElWRSwgQUNQSV9BQ1RJVkVfTE9XKTsKPiA+ICsgICAgIGlmIChpcnEgPCAwKQo+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gaXJxOwo+ID4gKwo+ID4gKyAgICAgZ3Bpb19iYXNlID0gaW9yZW1hcChM
T09OR1NPTl9HUElPX1JFR19CQVNFLCBMT09OR1NPTl9HUElPX1JFR19TSVpFKTsKPiA+ICsgICAg
IGlmICghZ3Bpb19iYXNlKSB7Cj4gPiArICAgICAgICAgICAgIGFjcGlfdW5yZWdpc3Rlcl9nc2ko
Z3NpKTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZ3Bpb19iYXNlKTsKPiA+ICsg
ICAgIH0KPiA+ICsKPiA+ICsgICAgIHdyaXRlbChyZWFkbChncGlvX2Jhc2UgKyBMT09OR1NPTl9H
UElPX09FTikgfCBCSVQoQk1DX1JFU0VUX0dQSU8pLAo+ID4gKyAgICAgICAgICAgIGdwaW9fYmFz
ZSArIExPT05HU09OX0dQSU9fT0VOKTsKPiA+ICsgICAgIHdyaXRlbChyZWFkbChncGlvX2Jhc2Ug
KyBMT09OR1NPTl9HUElPX0ZVTkMpICYgfkJJVChCTUNfUkVTRVRfR1BJTyksCj4gPiArICAgICAg
ICAgICAgZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19GVU5DKTsKPiA+ICsgICAgIHdyaXRlbChy
ZWFkbChncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX0lOVFBPTCkgJiB+QklUKEJNQ19SRVNFVF9H
UElPKSwKPiA+ICsgICAgICAgICAgICBncGlvX2Jhc2UgKyBMT09OR1NPTl9HUElPX0lOVFBPTCk7
Cj4gPiArICAgICB3cml0ZWwocmVhZGwoZ3Bpb19iYXNlICsgTE9PTkdTT05fR1BJT19JTlRFTikg
fCBCSVQoQk1DX1JFU0VUX0dQSU8pLAo+ID4gKyAgICAgICAgICAgIGdwaW9fYmFzZSArIExPT05H
U09OX0dQSU9fSU5URU4pOwo+ID4gKwo+ID4gKyAgICAgcmV0ID0gcmVxdWVzdF9pcnEoaXJxLCBs
czJrYm1jX2ludGVycnVwdCwgSVJRRl9TSEFSRUQgfCBJUlFGX1RSSUdHRVJfRkFMTElORywKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICJsczJrYm1jIGdwaW8iLCBwcml2KTsKPiA+ICsKPiA+
ICsgICAgIGFjcGlfdW5yZWdpc3Rlcl9nc2koZ3NpKTsKPiA+ICsgICAgIGlvdW5tYXAoZ3Bpb19i
YXNlKTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRp
YyBpbnQgbHMya2JtY19wZGF0YV9pbml0aWFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYs
IHN0cnVjdCBsczJrYm1jX3BkYXRhICpwcml2KQo+ID4gK3sKPiA+ICsgICAgIGludCByZXQ7Cj4g
PiArCj4gPiArICAgICBwcml2LT5wZGV2ID0gKihzdHJ1Y3QgcGNpX2RldiAqKilkZXZfZ2V0X3Bs
YXRkYXRhKCZwZGV2LT5kZXYpOwo+ID4gKwo+ID4gKyAgICAgbHMya2JtY19zYXZlX3BjaV9kYXRh
KHByaXYpOwo+ID4gKwo+ID4gKyAgICAgSU5JVF9XT1JLKCZwcml2LT5ibWNfd29yaywgbHMya2Jt
Y19ldmVudHNfZm4pOwo+ID4gKwo+ID4gKyAgICAgcmV0ID0gcmVxdWVzdF9pcnEocHJpdi0+cGRl
di0+aXJxLCBsczJrYm1jX2ludGVycnVwdCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIElS
UUZfU0hBUkVEIHwgSVJRRl9UUklHR0VSX1JJU0lORywgImxzMmtibWMgcGNpZSIsIHByaXYpOwo+
ID4gKyAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICAgICAgICBwcl9lcnIoInJlcXVlc3RfaXJx
KCVkKSBmYWlsZWRcbiIsIHByaXYtPnBkZXYtPmlycSk7Cj4gPiArICAgICAgICAgICAgIHJldHVy
biByZXQ7Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICByZXR1cm4gbHMya2JtY19ncGlvX3Jl
c2V0X2hhbmRsZXIocHJpdik7Cj4gPiArfQo+ID4gKwo+ID4gICAvKgo+ID4gICAgKiBQbGF0Zm9y
bSBkcml2ZXIKPiA+ICAgICovCj4gPiBAQCAtNTk4LDEyICs4NzcsMTUgQEAgc3RhdGljIGludCBs
czJrYm1jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICBpZiAo
SVNfRVJSKHByaXYpKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+Cj4gPiAt
ICAgICBwcml2LT5wZGV2ID0gKihzdHJ1Y3QgcGNpX2RldiAqKilkZXZfZ2V0X3BsYXRkYXRhKCZw
ZGV2LT5kZXYpOwo+ID4gKyAgICAgcmV0ID0gbHMya2JtY19wZGF0YV9pbml0aWFsKHBkZXYsIHBy
aXYpOwo+ID4gKyAgICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+
Cj4gPiAgICAgICBzZGV2ID0gbHMya2JtY19kZXZpY2VfY3JlYXRlKCZsczJrYm1jX2RyaXZlciwg
cGRldiwgcHJpdik7Cj4gPiAgICAgICBpZiAoSVNfRVJSKHNkZXYpKQo+ID4gICAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihzZGV2KTsKPiA+ICAgICAgIGRldiA9ICZzZGV2LT5kZXY7Cj4gPiAr
ICAgICBwcml2LT5kZGV2ID0gJnNkZXYtPmRldjsKPiA+Cj4gPiAgICAgICByZXQgPSBkcm1fZGV2
X3JlZ2lzdGVyKGRldiwgMCk7Cj4gPiAgICAgICBpZiAocmV0KQo+Cj4gLS0KPiAtLQo+IFRob21h
cyBaaW1tZXJtYW5uCj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+IFNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSAo+IEZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5i
ZXJnLCBHZXJtYW55Cj4gR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25h
bGQsIEJvdWRpZW4gTW9lcm1hbgo+IEhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQo+CgoKLS0KVGhh
bmtzLgpCaW5iaW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
