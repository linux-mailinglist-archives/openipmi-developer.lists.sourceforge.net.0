Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4554BA20FB8
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Jan 2025 18:44:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tcpcw-0002z2-Lm;
	Tue, 28 Jan 2025 17:43:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1tco8o-0001A7-Is
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Jan 2025 16:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=; b=IrkdkVfB6oMFis7lTmjaevSTy8
 fCAtgjub6N5I/Ze4zThoIy1Jid0rp6ppdwoDRkylyzoDUurz9v3NlZ0jFGCmOnj7nKabrgIrp+7sh
 f8UR9uerYTRjoPfbzyiEAwxrJb7ILffZkLwsylZU/8Y8og+xgtHjIe5jwbBG/icnjp8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=; b=g1HwijcmOPMinNPTOoy87/TVkq
 aiCTUNf1L4TpaRJD95v7WbbzaHNCdrM9tuleoQqWckQAnmat7f/mYvxkiBPMFiT2VOkIrCweLy2k5
 ZyS51SDXRSn+S/gZPUdRfr23YvWkvy92IIlSRlKFe23rtCMcMD1gQ5upJUobjpdiXG3s=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tco8n-0003iN-Om for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Jan 2025 16:08:42 +0000
Received: by mail-qk1-f173.google.com with SMTP id
 af79cd13be357-7b6e8814842so660555685a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Jan 2025 08:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1738080516; x=1738685316;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=;
 b=M+sHG8Aotcf20EFCZW3PttOugvRAa2W7HcVmARTigqrO6VIEZ+dRuU7FRhi5Axw9iT
 PiFWvWhfDiTZxY5IYVfp6SVoo75qFWYzc7y+X+bQo+GkHRQxz17I2zIpJVLWaQUnF9/X
 Dv1an5am120kawLS1FaCJTUWUfnqSMd1cAy/H5EA92bJcIlOQbEL49CcXuXp2dCO6jlq
 dRQVPmzmkMYm7R8auDk5w+oSK2eYUcNgEFGB4bG5h6HcoBqx8UU6MVjv9D+QMtysSkst
 nILn8W6dAhsHmHvUsXqS6aL/0UVj4Jrg0EMNtOxFJ5KFfV11AXYl20P02rk7ETnmzXvk
 2lKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738080516; x=1738685316;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4CM+Y34LzyqTPbJa964bMKTZoegb6ZCbeVLJYvxkr2Y=;
 b=CFCEuQbNi3PNNEbiEMAJQcbwPGJddIpElG66QyBvTiTvMGp7txknhD+vRk8WUZPe6J
 dOGK1HJJhyTbz+Af4p3UF/v2vVbFsBV/07kSrZwqxIG0468zfGNCRb3joF0W8qhAB3+o
 AswHaPjNTJ3GS+G9u4syQI1JQmYJvDu9sjR3WDQmQtbxldSY9q/sneqWodcLRXfS4dWX
 JhFAxHC3HoiTI5tFc0bdg5auKyClNFwc2biT3N3R4Kbs5mf+sdhjvp4B77s6DH/WTB2o
 k2RejpoSvf24u/L4loK8uk0EXxZWMCcgIsjm/ifl+/KbM0DWfKhRcOw9UZsqsqfqPXua
 ilFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXavY31Ex3ZMYlzcbPubg4XGd4ke18b14J8mO7bL1cs9tJ48FyfvUnBeiVR8GjdMqtKVjJrkh2GE4R/P5ALU+ZtefY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzJuKG5jOIEPulCGJeKTpgK75OzbELRX/Z25lPVAONNB82KLnD3
 bdODfSySh0FVl4419vAGpi19QiY8mtk84C2Lrm3ZKpcVOT23LkUE0EDnIr/JcJRwwTUjtZuENKE
 h+pTh31sSz/VZBvHE0RnuMgFTTu/ufzXJSjhugHbCyj568Jw=
X-Gm-Gg: ASbGnctaF1ku85FPsRotDUJ2L50GEn1XXM2Uh6qQvzqVjTuda9ZjdlhPMnLjfv6nwq7
 HkGEMntqijghG5d8z149Svk6aAcrUa3nhMrP3eZ8gQ0/9MBBn1eFJ5gp+cKVj+iqcsKWfEsY=
X-Google-Smtp-Source: AGHT+IGuLqrmdoXiE8apV7tzhOJZ5Xm1OF/NxWm8Kjkh7RMoG05FR1MdO9WMx2ebniwyt0o5rEC0Jv+xP432BtVJDY0=
X-Received: by 2002:a05:690c:4d02:b0:6ef:6646:b50a with SMTP id
 00721157ae682-6f6eb6b2881mr361409457b3.20.1738079001445; Tue, 28 Jan 2025
 07:43:21 -0800 (PST)
MIME-Version: 1.0
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
 <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
 <f4lfo2fb7ajogucsvisfd5sg2avykavmkizr6ycsllcrco4mo3@qt2zx4zp57zh>
 <87jzag9ugx.fsf@intel.com> <Z5epb86xkHQ3BLhp@casper.infradead.org>
 <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
In-Reply-To: <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 28 Jan 2025 10:43:10 -0500
X-Gm-Features: AWEUYZkHRaUuCTQsu1U9C5jhigmIE9c2_8OmkE_i2Qv7ILXtAaTfDLC5EcLBZNk
Message-ID: <CAHC9VhQnB_bsQaezBfAcA0bE7Zoc99QXrvO1qjpHA-J8+_doYg@mail.gmail.com>
To: Joel Granados <joel.granados@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jan 28, 2025 at 6:22 AM Joel Granados <joel.granados@kernel.org>
    wrote: > On Mon, Jan 27, 2025 at 03:42:39PM +0000, Matthew Wilcox wrote:
   > > On Mon, Jan 27, 2025 at 04:55:58PM +0200, Jani N [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.173 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [209.85.222.173 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.222.173 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.173 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1tco8n-0003iN-Om
X-Mailman-Approved-At: Tue, 28 Jan 2025 17:43:54 +0000
Subject: Re: [Openipmi-developer] [PATCH v2] treewide: const qualify
 ctl_tables where applicable
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
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Corey Minyard <cminyard@mvista.com>, Kees Cook <kees@kernel.org>,
 "Darrick J. Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 codalist@coda.cs.cmu.edu, Alexander Gordeev <agordeev@linux.ibm.com>,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-serial@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-trace-kernel@vger.kernel.org,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, "Steven Rostedt \(Google\)" <rostedt@goodmis.org>,
 linux-raid@vger.kernel.org, ocfs2-devel@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, fsverity@lists.linux.dev,
 linux-nfs@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Song Liu <song@kernel.org>, kexec@lists.infradead.org,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBKYW4gMjgsIDIwMjUgYXQgNjoyMuKAr0FNIEpvZWwgR3JhbmFkb3MgPGpvZWwuZ3Jh
bmFkb3NAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gTW9uLCBKYW4gMjcsIDIwMjUgYXQgMDM6NDI6
MzlQTSArMDAwMCwgTWF0dGhldyBXaWxjb3ggd3JvdGU6Cj4gPiBPbiBNb24sIEphbiAyNywgMjAy
NSBhdCAwNDo1NTo1OFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+ID4gWW91IGNvdWxk
IGhhdmUgc3RhdGljIGNvbnN0IHdpdGhpbiBmdW5jdGlvbnMgdG9vLiBZb3UgZ2V0IHRoZSByb2Rh
dGEKPiA+ID4gcHJvdGVjdGlvbiBhbmQgZnVuY3Rpb24gbG9jYWwgc2NvcGUsIGJlc3Qgb2YgYm90
aCB3b3JsZHM/Cj4gPgo+ID4gdGltZXJfYWN0aXZlIGlzIG9uIHRoZSBzdGFjaywgc28gaXQgY2Fu
J3QgYmUgc3RhdGljIGNvbnN0Lgo+ID4KPiA+IERvZXMgdGhpcyByZWFsbHkgbmVlZCB0byBiZSBj
YydkIHRvIHN1Y2ggYSB3aWRlIGRpc3RyaWJ1dGlvbiBsaXN0Pwo+IFRoYXQgaXMgYSB2ZXJ5IGdv
b2QgcXVlc3Rpb24uIEkgcmVtb3ZlZCAxNjAgcGVvcGxlIGZyb20gdGhlIG9yaWdpbmFsCj4gZS1t
YWlsIGFuZCBsZWZ0IHRoZSBvbmVzIHRoYXQgd2hlcmUgcHJldmlvdXNseSBpbnZvbHZlZCB3aXRo
IHRoaXMgcGF0Y2gKPiBhbmQgbGVmdCBhbGwgdGhlIGxpc3RzIGZvciBnb29kIG1lYXN1cmUuIEJ1
dCBpdCBzZWVtcyBJIGNhbiByZWR1Y2UgaXQKPiBldmVuIG1vcmUuCj4KPiBIb3cgYWJvdXQgdGhp
czogRm9yIHRoZXNlIHRyZWV3aWRlIGVmZm9ydHMgSSBqdXN0IGxlYXZlIHRoZSBwZW9wbGUgdGhh
dAo+IGFyZS93ZXJlIGludm9sdmVkIGluIHRoZSBzZXJpZXMgYW5kIGFkZCB0d28gbGlzdHM6IGxp
bnV4LWtlcm5lbCBhbmQKPiBsaW51eC1oYXJkZW5pbmcuCj4KPiBVbmxlc3Mgc29tZW9uZSBzY3Jl
YW1zLCBJJ2xsIHRyeSB0aGlzIG91dCBvbiBteSBuZXh0IHRyZWV3aWRlLgoKSSdtIG5vdCBzY3Jl
YW1pbmcgYWJvdXQgaXQgOikgYnV0IGFueXRoaW5nIHRoYXQgdG91Y2hlcyB0aGUgTFNNLApTRUxp
bnV4LCBvciBhdWRpdCBjb2RlIChvciBtYXRjaGVzIHRoZSByZWdleCBpbiBNQUlOVEFJTkVSUykg
SSB3b3VsZApwcmVmZXIgdG8gc2VlIG9uIHRoZSBhc3NvY2lhdGVkIG1haWxpbmcgbGlzdC4KCi0t
IApwYXVsLW1vb3JlLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
