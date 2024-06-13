Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0657A907CE9
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jun 2024 21:50:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHqSS-0004HR-RV;
	Thu, 13 Jun 2024 19:50:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sHq6D-00050v-RL
 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Jun 2024 19:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=; b=cCo90UkfYarUnGo8gdRuBm4IiT
 AwZdBxbrCKw42uw4p+2J9kOodwu5g0/hLxZ1UJB8CiLY9VgOd40g3OvjkTa/58jT+E/TNWK+mQkiL
 a6AC6p6U6v+7L/H1NZYPECffjpv+pHZYwemMk5WBIauqoKFB/igy0Abrs8pxTPpP4xBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=; b=WybQyq1g0aSxRUoFPIslc79Hr0
 L9iA9BUS9nUVYfv1zFwUBrfn6fpDJTbEDFdauZsC/SamYw3yOaFv7DfI9yG811qY26Batw6kxvyS/
 CZykPAF/OZa8YgIyLQOioe2kEv8qgVQh1Or8JMocSZTnFHRYleG7x3t2a+UFzAjFiPJA=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sHq6E-0007xo-84 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Jun 2024 19:27:06 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-441567d352bso9075291cf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Jun 2024 12:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1718306814; x=1718911614;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=;
 b=cBn11+J1t98e1jDKInQNMBduE2QVazOjVr550vO5aRpGJI59CmQfcH3lPPb2uENPdb
 3u4RhV+mrZPQjLcs58jQEhuXJYfGKR8ICwV6xuALx9sIjCfcYAZl7plsRorSK15v57rN
 EyrTAaPswaon4UNSAG4W4LwXeu69WkXbGXKRp0ErfFrrkiUtOg2NVOLrfrDAwurB/1Be
 YDJnP21ods3Wcdw501+YuWkjr14j+xI5f5Vhwssau1+6NNqeltPN/A9c35c4Xse6TPnL
 AB7V2X4WHcXwP1iGNyIierxTTFFDyppBlYp5cuhJT43yJ9k+TLptMaKWRXabqdqLkaGx
 aplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718306814; x=1718911614;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=;
 b=jkQ46GRXnYattWQxOgfqoCE2AxBaKNsXnrHHTAUKno29rMyhNBRxvpimQe3bB1TZIR
 xhbDqYm2V9rT+05OgA5MxYnuqclJZRn57vyXfFCwjYm2N/ZgXM/l3VCcZow6aZMFQTEh
 zNMx6yPlDViZ+H6CObcR+SB13QNPyDfrYfiunOxywj4VzNhNarJXnHF55VOUHeQFs7TQ
 ew12wb6XW880jF+3KjuQswQsTfF9VlB8817P+TLo1hco0pEllBb9JXBcFkfx0IGZVYof
 53aE79Wj52EX43GeNo8SliACZlkeYiPbIifOlb2nP0XFVFVzPbE8kl+rG7dZhQdSxlD7
 rrng==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkc/257CZbaTYiDTxYQW4E7+lBGOH+HaziXh3cEZvFAEooCzl+40+iFGdOVEeWOyUFvnD/JMEv8V8dPDVCu2nB/4vkOjxEJF8YBJGmNXKfKa1bgCpn6Fhu
X-Gm-Message-State: AOJu0Yzu17x5Hg4oDS5YDA3bcAdpjdlDBteLlLp8nEc2ahIMMf/GKaXJ
 DAakmypKqxOG+ZIWkjumHNpneUH8kCLwbx3LwJDncdxbRcFDusmmSBkn3I6inev/FE8//ynlD9t
 wLVt80A==
X-Google-Smtp-Source: AGHT+IG9MnlA72bZ18aF5rYF5wl0pr5uFRNrPbLUoHQMtyYlzNhExUV24HDmhv5A6kYfu5h17G7Atw==
X-Received: by 2002:a05:6808:10d2:b0:3d2:14b5:adf8 with SMTP id
 5614622812f47-3d24e8a7ac9mr606995b6e.5.1718304904174; 
 Thu, 13 Jun 2024 11:55:04 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f695:486a:b518:fdb])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3d2476bb5aesm282578b6e.38.2024.06.13.11.55.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Jun 2024 11:55:03 -0700 (PDT)
Date: Thu, 13 Jun 2024 13:55:01 -0500
From: Corey Minyard <corey@minyard.net>
To: Rob Herring <robh@kernel.org>
Message-ID: <ZmtAhcviSUKoFLsz@mail.minyard.net>
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
 <20240612043255.1849007-2-potin.lai.pt@gmail.com>
 <20240613175946.GA2085029-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240613175946.GA2085029-robh@kernel.org>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 13, 2024 at 11:59:46AM -0600, Rob Herring wrote:
 > On Wed, Jun 12, 2024 at 12:32:54PM +0800, Potin Lai wrote: > > In ARM Server
 Base Manageability Requirements (SBMR) document, Callers can [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.179 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.179 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.160.179 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sHq6E-0007xo-84
X-Mailman-Approved-At: Thu, 13 Jun 2024 19:50:00 +0000
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
Reply-To: corey@minyard.net
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6NTk6NDZBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMTI6MzI6NTRQTSArMDgwMCwgUG90aW4gTGFp
IHdyb3RlOgo+ID4gSW4gQVJNIFNlcnZlciBCYXNlIE1hbmFnZWFiaWxpdHkgUmVxdWlyZW1lbnRz
IChTQk1SKSBkb2N1bWVudCwgQ2FsbGVycyBjYW4KPiA+IGNob29zZSB0byBub3QgcmVhZCBiYWNr
IFJlc3BvbnNlIERhdGEgYWZ0ZXIgc2VuZGluZyB0aGUgY29tbWFuZCAiU2VuZCBCb290Cj4gPiBQ
cm9ncmVzcyBDb2RlIi4KPiAKPiBHb3QgYSBsaW5rIHRvIHRoYXQgZG9jdW1lbnQ/Cj4gCj4gPiBE
ZWZpbmUgImFybS1zYm1yLHNraXAtYm9vdHByb2dyZXNzLXJlc3BvbnNlIiBwcm9wZXJ0eSBmb3Ig
c2tpcHBpbmcgdGhlCj4gPiByZXNwb25zZSBvZiAiU2VuZCBCb290IFByb2dyZXNzIENvZGUiIGZy
b20gdXNlcnNwYWNlLgo+IAo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgdGhpcyB3b3VsZCBiZSBj
b25kaXRpb25hbD8gSG93IGNhbiB5b3UgZGVmaW5lIGluIAo+IHRoZSBCTUMgd2hhdCB0aGUgaG9z
dCBiZWhhdmlvciBpcz8gRG9lc24ndCB0aGUgaG9zdCBzaWRlIGRlY2lkZSAKPiB0aGF0PyBTbyBk
b24ndCB5b3UgYWx3YXlzIGhhdmUgdG8gc3VwcG9ydCBubyByZXNwb25zZT8KClllYWgsIHRoaXMg
ZG9lc24ndCBtYWtlIGFueSBzZW5zZSBmb3IgdHdvIHJlYXNvbnM6CgpXaGF0IGlmIHRoZSBob3N0
IHdhbnRlZCB0byByZWFkIGJhY2sgdGhlIHJlc3BvbnNlPyAgWW91IG1ha2Ugbm8KcHJvdmlzaW9u
IGZvciB0aGF0LCBhcyBJIGJlbGlldmUgUm9iIHNhaWQgYWJvdmUuCgpUaGUgQk1DIHNob3VsZCBi
ZSBhYmxlIHRvIHN0YXJ0IGEgbmV3IHRyYW5zYWN0aW9uIHdpdGhvdXQgdGhlIHByZXZpb3VzCnJl
c3BvbnNlIGJlaW5nIHJlYWQuICBTbyB0aGlzIHNob3VsZCBiZSBwb2ludGxlc3MuICBJZiB0aGF0
J3Mgbm90CmhhcHBlbmluZywgaXQncyBhIGJ1ZyBhbmQgc2hvdWxkIGJlIGZpeGVkLiAgT3RoZXJ3
aXNlIGFuIHVudGltZWx5IHJlc2V0CmNvdWxkIGhhbmcgdGhlIFNTSUYgaW50ZXJmYWNlLgoKLWNv
cmV5Cgo+IAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBQb3RpbiBMYWkgPHBvdGluLmxhaS5wdEBn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aXBtaS9zc2lmLWJtYy55YW1sIHwgNSArKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9pcG1pL3NzaWYtYm1jLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvaXBtaS9zc2lmLWJtYy55YW1sCj4gPiBpbmRleCAwMmI2NjJkNzgwYmJiLi5iMjFlOTU4
ZWZjMTg0IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2lwbWkvc3NpZi1ibWMueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2lwbWkvc3NpZi1ibWMueWFtbAo+ID4gQEAgLTE5LDYgKzE5LDExIEBAIHByb3BlcnRp
ZXM6Cj4gPiAgICByZWc6Cj4gPiAgICAgIG1heEl0ZW1zOiAxCj4gPiAgCj4gPiArICBhcm0tc2Jt
cixza2lwLWJvb3Rwcm9ncmVzcy1yZXNwb25zZToKPiAKPiBGb3JtIGlzIHZlbmRvcixwcm9wZXJ0
eS1uYW1lIHdoZXJlIHZlbmRvciBpcyBkZWZpbmVkIGluIAo+IHZlbmRvci1wcmVmaXhlcy55YW1s
LiAnYXJtLXNibXInIGlzIG5vdCBhIHZlbmRvci4KPiAKPiA+ICsgICAgdHlwZTogYm9vbGVhbgo+
ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBTa2lwcGluZyBBUk0gU0JNUiDigJxTZW5k
IEJvb3QgUHJvZ3Jlc3MgQ29kZeKAnSByZXNwb25zZS4KPiA+ICsKPiA+ICByZXF1aXJlZDoKPiA+
ICAgIC0gY29tcGF0aWJsZQo+ID4gICAgLSByZWcKPiA+IC0tIAo+ID4gMi4zMS4xCj4gPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Blbmlw
bWktZGV2ZWxvcGVyCg==
