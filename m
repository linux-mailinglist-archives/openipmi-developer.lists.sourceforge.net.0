Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6615B907A7B
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jun 2024 20:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHojw-0001Pp-Ly;
	Thu, 13 Jun 2024 18:00:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1sHojv-0001Ph-PN
 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Jun 2024 17:59:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pm78ce7+o2Me7N9cNffirPery/ve+KPMPYXNhWq3fvY=; b=EgiP4n4nkrbgcDNQtp6MxrE+/n
 K3udF0fAVLgl/mrRLnzRrLnXFyhac/kHuKT4dEOo8+/SaDL9oegJZUmBfvMjL/LkCx3ncHqZk3vwz
 S+0TEBCJ2Bozj8jjSlq3c2JuJVsk1wUdVUHp6XENoJU6RROwPpTqXJVvbWTWdnN61o+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pm78ce7+o2Me7N9cNffirPery/ve+KPMPYXNhWq3fvY=; b=HnPqFaCJRYrhTMdcPYaaam/kqN
 MYo5oIyTrKcztyXQdMnZcR5sAxpbF++bIt0ZzyAYt8AdTc3nWVTT3v3XHRCLHD1Rmbognug3iQOHt
 0CZmnewmakeHgM6j8bq1EB+wEh0zEhqXY/s06enOdkzjHIUI/+e1qZwzZaSbdBCgwRH8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHojv-0001O7-As for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Jun 2024 17:59:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3754F611DD;
 Thu, 13 Jun 2024 17:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B553EC2BBFC;
 Thu, 13 Jun 2024 17:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1718301587;
 bh=ba5a7SrwKzZox0+DAfJ3tbJfpYcmRULnrBc+3V62Rng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HAXnB4KKEIeKZoxVRiMkvnv0AqZzQvtowJBSJEy5NC54ajGD+adT0vDwmcxkPEXeg
 TqfjfBtyXYJZ2BJP497pWWS6oCUQ/uzLmZykxewe2ZiuMYHtTU2DfP+u60cjU15XxA
 bzpwihCtcQAVhogRG/3CP3ZfMa3QDBd20qLzuWibcChfdeOU8Wp/jpO7EaBTeNjyqL
 lM0GhdN54G1t2i6+BEdkIHr9vNmn3FnDaY5U8MD+OYmbwGYhkjcqv9sYTNIDyHu2aw
 luKgqZx3PxYSaGoLMZIBQRpb7mffXd91Zl8CoiNaF7qeFvicGJJRKe6i0dKj9BqyCQ
 AdzgQOcKcKmOA==
Date: Thu, 13 Jun 2024 11:59:46 -0600
From: Rob Herring <robh@kernel.org>
To: Potin Lai <potin.lai.pt@gmail.com>
Message-ID: <20240613175946.GA2085029-robh@kernel.org>
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
 <20240612043255.1849007-2-potin.lai.pt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612043255.1849007-2-potin.lai.pt@gmail.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 12, 2024 at 12:32:54PM +0800, Potin Lai wrote:
 > In ARM Server Base Manageability Requirements (SBMR) document, Callers
 can > choose to not read back Response Data after sending the comman [...]
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sHojv-0001O7-As
Subject: Re: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: Add property
 for skipping SBMR boot progress response
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Patrick Williams <patrick@stwcx.xyz>,
 Cosmo Chou <cosmo.chou@quantatw.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMTI6MzI6NTRQTSArMDgwMCwgUG90aW4gTGFpIHdyb3Rl
Ogo+IEluIEFSTSBTZXJ2ZXIgQmFzZSBNYW5hZ2VhYmlsaXR5IFJlcXVpcmVtZW50cyAoU0JNUikg
ZG9jdW1lbnQsIENhbGxlcnMgY2FuCj4gY2hvb3NlIHRvIG5vdCByZWFkIGJhY2sgUmVzcG9uc2Ug
RGF0YSBhZnRlciBzZW5kaW5nIHRoZSBjb21tYW5kICJTZW5kIEJvb3QKPiBQcm9ncmVzcyBDb2Rl
Ii4KCkdvdCBhIGxpbmsgdG8gdGhhdCBkb2N1bWVudD8KCj4gRGVmaW5lICJhcm0tc2Jtcixza2lw
LWJvb3Rwcm9ncmVzcy1yZXNwb25zZSIgcHJvcGVydHkgZm9yIHNraXBwaW5nIHRoZQo+IHJlc3Bv
bnNlIG9mICJTZW5kIEJvb3QgUHJvZ3Jlc3MgQ29kZSIgZnJvbSB1c2Vyc3BhY2UuCgpJIGRvbid0
IHVuZGVyc3RhbmQgd2h5IHRoaXMgd291bGQgYmUgY29uZGl0aW9uYWw/IEhvdyBjYW4geW91IGRl
ZmluZSBpbiAKdGhlIEJNQyB3aGF0IHRoZSBob3N0IGJlaGF2aW9yIGlzPyBEb2Vzbid0IHRoZSBo
b3N0IHNpZGUgZGVjaWRlIAp0aGF0PyBTbyBkb24ndCB5b3UgYWx3YXlzIGhhdmUgdG8gc3VwcG9y
dCBubyByZXNwb25zZT8KCj4gCj4gU2lnbmVkLW9mZi1ieTogUG90aW4gTGFpIDxwb3Rpbi5sYWku
cHRAZ21haWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aXBtaS9zc2lmLWJtYy55YW1sIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pcG1pL3NzaWYtYm1jLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aXBtaS9zc2lmLWJtYy55YW1sCj4gaW5kZXggMDJiNjYyZDc4MGJiYi4uYjIxZTk1OGVmYzE4NCAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9zc2lm
LWJtYy55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkv
c3NpZi1ibWMueWFtbAo+IEBAIC0xOSw2ICsxOSwxMSBAQCBwcm9wZXJ0aWVzOgo+ICAgIHJlZzoK
PiAgICAgIG1heEl0ZW1zOiAxCj4gIAo+ICsgIGFybS1zYm1yLHNraXAtYm9vdHByb2dyZXNzLXJl
c3BvbnNlOgoKRm9ybSBpcyB2ZW5kb3IscHJvcGVydHktbmFtZSB3aGVyZSB2ZW5kb3IgaXMgZGVm
aW5lZCBpbiAKdmVuZG9yLXByZWZpeGVzLnlhbWwuICdhcm0tc2JtcicgaXMgbm90IGEgdmVuZG9y
LgoKPiArICAgIHR5cGU6IGJvb2xlYW4KPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBTa2lw
cGluZyBBUk0gU0JNUiDigJxTZW5kIEJvb3QgUHJvZ3Jlc3MgQ29kZeKAnSByZXNwb25zZS4KPiAr
Cj4gIHJlcXVpcmVkOgo+ICAgIC0gY29tcGF0aWJsZQo+ICAgIC0gcmVnCj4gLS0gCj4gMi4zMS4x
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Bl
bmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L29wZW5pcG1pLWRldmVsb3Blcgo=
