Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45151A2195A
	for <lists+openipmi-developer@lfdr.de>; Wed, 29 Jan 2025 09:49:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1td3lL-0006TI-Jd;
	Wed, 29 Jan 2025 08:49:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.granados@kernel.org>) id 1td3lJ-0006TA-Mi
 for openipmi-developer@lists.sourceforge.net;
 Wed, 29 Jan 2025 08:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nURhNL5CXDCG5u+sGjTuuMwgP9Va2BW312i7D9feyB4=; b=JcNbqadazvMx+mhgk94PrNlc1e
 sqLjsVdmRI0Yy1lZQ0cvx72+21/LzDJHUTBR6sSjFE9+IAV1wcmZW/q0MTB+WLAWlZ5XB0MHi1tBT
 6UfFN9jE7YlVPYhWuYbMjNiscLAjX+tPAAk35fYntAWpwYN9FBp2N54eq/axnkGwBRA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nURhNL5CXDCG5u+sGjTuuMwgP9Va2BW312i7D9feyB4=; b=Y5118JAq2AFQIBk/J1cZAkq/2c
 pr1QxO8x6SNZ+WEhESiGe1OTQrkvDof6khN2L0i16pelGVM2dZyX8eZM/MgTKr8ry4hCAPqVhffuD
 oTlIEAMA01tr1CoAjqpWg2K9MSW4sVLqK6F0dgHuaJXm9UJUEVASywDP00WqdHS2+czo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1td3lI-0008AV-Ql for openipmi-developer@lists.sourceforge.net;
 Wed, 29 Jan 2025 08:49:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 631165C027D;
 Wed, 29 Jan 2025 08:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAFA1C4CED3;
 Wed, 29 Jan 2025 08:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1738140558;
 bh=bkecGghn49Q0kcBr4/Q4RAYEqTU2lzStxg+kMBkUviM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D+6QRnebTmdCsTn/fBIyawZ8F2h5FOi1VkBceKjrJE9gQqYhsE4MpI+DUnmOyvn9r
 jy2STn2XFJrPEPFrh+vO/ZWYbctxdvY6UR3Ry6YZK+y8a1MhcK6ynlBs1p1BMMkJ1P
 w6gLTDQPv35AYJJgnh4TzBlS6e9ascDPFne+p1YDjEpGVHG5PR2AxRH9J1o9Q9BPKi
 anvTB+Oa86UvplOCcaBDT4qhHCCSJO/P11ip4o+2DBjUNcnkNIz/KxsEnezLq+wofc
 pmlKCTkKHhEdUE5jBQ13DTAnVV4ZlV/QW5dr1RzqeBZB57C+fkYnuuFh6jqnxMpijz
 QxNX1fm0X2YKQ==
Date: Wed, 29 Jan 2025 09:49:13 +0100
To: Paul Moore <paul@paul-moore.com>
Message-ID: <umk5gfo7iq7krppvqsal57hlzds26bdqd3g7kccjzuudjikdws@k2oknd6zx6g7>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
 <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
 <f4lfo2fb7ajogucsvisfd5sg2avykavmkizr6ycsllcrco4mo3@qt2zx4zp57zh>
 <87jzag9ugx.fsf@intel.com> <Z5epb86xkHQ3BLhp@casper.infradead.org>
 <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
 <CAHC9VhQnB_bsQaezBfAcA0bE7Zoc99QXrvO1qjpHA-J8+_doYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHC9VhQnB_bsQaezBfAcA0bE7Zoc99QXrvO1qjpHA-J8+_doYg@mail.gmail.com>
X-Spam-Score: -6.5 (------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jan 28, 2025 at 10:43:10AM -0500, Paul Moore wrote:
    > On Tue, Jan 28, 2025 at 6:22 AM Joel Granados <joel.granados@kernel.org>
    wrote: > > On Mon, Jan 27, 2025 at 03:42:39PM +0000, Matthew Wi [...] 
 
 Content analysis details:   (-6.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [139.178.84.217 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [139.178.84.217 listed in sa-trusted.bondedsender.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1td3lI-0008AV-Ql
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
From: Joel Granados via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Joel Granados <joel.granados@kernel.org>
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
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBKYW4gMjgsIDIwMjUgYXQgMTA6NDM6MTBBTSAtMDUwMCwgUGF1bCBNb29yZSB3cm90
ZToKPiBPbiBUdWUsIEphbiAyOCwgMjAyNSBhdCA2OjIy4oCvQU0gSm9lbCBHcmFuYWRvcyA8am9l
bC5ncmFuYWRvc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+IE9uIE1vbiwgSmFuIDI3LCAyMDI1IGF0
IDAzOjQyOjM5UE0gKzAwMDAsIE1hdHRoZXcgV2lsY294IHdyb3RlOgo+ID4gPiBPbiBNb24sIEph
biAyNywgMjAyNSBhdCAwNDo1NTo1OFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+ID4g
PiBZb3UgY291bGQgaGF2ZSBzdGF0aWMgY29uc3Qgd2l0aGluIGZ1bmN0aW9ucyB0b28uIFlvdSBn
ZXQgdGhlIHJvZGF0YQo+ID4gPiA+IHByb3RlY3Rpb24gYW5kIGZ1bmN0aW9uIGxvY2FsIHNjb3Bl
LCBiZXN0IG9mIGJvdGggd29ybGRzPwo+ID4gPgo+ID4gPiB0aW1lcl9hY3RpdmUgaXMgb24gdGhl
IHN0YWNrLCBzbyBpdCBjYW4ndCBiZSBzdGF0aWMgY29uc3QuCj4gPiA+Cj4gPiA+IERvZXMgdGhp
cyByZWFsbHkgbmVlZCB0byBiZSBjYydkIHRvIHN1Y2ggYSB3aWRlIGRpc3RyaWJ1dGlvbiBsaXN0
Pwo+ID4gVGhhdCBpcyBhIHZlcnkgZ29vZCBxdWVzdGlvbi4gSSByZW1vdmVkIDE2MCBwZW9wbGUg
ZnJvbSB0aGUgb3JpZ2luYWwKPiA+IGUtbWFpbCBhbmQgbGVmdCB0aGUgb25lcyB0aGF0IHdoZXJl
IHByZXZpb3VzbHkgaW52b2x2ZWQgd2l0aCB0aGlzIHBhdGNoCj4gPiBhbmQgbGVmdCBhbGwgdGhl
IGxpc3RzIGZvciBnb29kIG1lYXN1cmUuIEJ1dCBpdCBzZWVtcyBJIGNhbiByZWR1Y2UgaXQKPiA+
IGV2ZW4gbW9yZS4KPiA+Cj4gPiBIb3cgYWJvdXQgdGhpczogRm9yIHRoZXNlIHRyZWV3aWRlIGVm
Zm9ydHMgSSBqdXN0IGxlYXZlIHRoZSBwZW9wbGUgdGhhdAo+ID4gYXJlL3dlcmUgaW52b2x2ZWQg
aW4gdGhlIHNlcmllcyBhbmQgYWRkIHR3byBsaXN0czogbGludXgta2VybmVsIGFuZAo+ID4gbGlu
dXgtaGFyZGVuaW5nLgo+ID4KPiA+IFVubGVzcyBzb21lb25lIHNjcmVhbXMsIEknbGwgdHJ5IHRo
aXMgb3V0IG9uIG15IG5leHQgdHJlZXdpZGUuCj4gCj4gSSdtIG5vdCBzY3JlYW1pbmcgYWJvdXQg
aXQgOikgYnV0IGFueXRoaW5nIHRoYXQgdG91Y2hlcyB0aGUgTFNNLApJJ2xsIGNvbnNpZGVyIGl0
IGFzIGEgc2NyZWFtIDopIFNvIEknbGwga2VlcCBteSBwcmV2aW91cyBhcHByb2FjaCBvZgpsZWF2
aW5nIG9ubHkgcGVyc29uYWwgbWFpbHMgdGhhdCBhcmUgaW52b2x2ZWQsIGJ1dCBsZWF2aW5nIGFs
bCB0aGUgbGlzdHMKdGhhdCBiNCBzdWdnZXN0cy4KCj4gU0VMaW51eCwgb3IgYXVkaXQgY29kZSAo
b3IgbWF0Y2hlcyB0aGUgcmVnZXggaW4gTUFJTlRBSU5FUlMpIEkgd291bGQKPiBwcmVmZXIgdG8g
c2VlIG9uIHRoZSBhc3NvY2lhdGVkIG1haWxpbmcgbGlzdC4KCkdlbmVyYWwgY29tbWVudCBzZW50
IHRvIHRoZSB2b2lkOgpJdCBpcyB0cmlja3kgdG8ga25vdyBleGFjdGx5IHdobyB3YW50cyB0byBi
ZSBpbmZvcm1lZCBvZiBhbGwgdGhpcyBhbmQKd2hvIHRoaW5rcyBpdHMgdXNlbGVzcy4gSSB0aGlu
ayB0aGF0IGlmIHdlIHdhbnQgbW9yZSBmb2N1cyBpdCBzaG91bGQKY29tZSBmcm9tIGF1dG9tYXRl
ZCB0b29scyBsaWtlIGI0LiBNYXliZSBzb21lIHN0cmluZyBpbiBNQUlOVEFJTkVSUwpzdGF0aW5n
IHRoYXQgdGhlIGxpc3Qgc2hvdWxkIG5vdCBiZSB1c2VkIGluIGNhc2VzIG9mIHRyZWUtd2lkZSBj
b21taXRzPwoKQmVzdAoKLS0gCgpKb2VsIEdyYW5hZG9zCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
