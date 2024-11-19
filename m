Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 052CD9D2531
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Nov 2024 13:01:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tDMvT-00073V-1N;
	Tue, 19 Nov 2024 12:01:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tDMvS-00073M-BY
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 12:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=; b=j4n5Hh/0ZZ0rDUZHdCFFGFhBfj
 hG7yz9i3wYf5xZsMPHDqTeu5fuklGTAhleCUc3mmH4uZWg/htzW3kx9it/+BG00+aXjoy3NzzoPyN
 /+KoqkAUKfnGM9QuLUU47nGv+4oYf+hCPHnHQHzIiWetGWcRuGYMi6+8jlaOebxzdTYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=; b=T89g9Sd/+NNPoiBnuX5SvDsrDn
 WCUd47HelVksrW7/teNbTRmFJdJjo+Emuh21gb6rX++RhNxsZ8pZa7QXMEhJCRWG4YTGxhfAf4ig5
 VHV6fsLtygAR900Zk1KoECJ+zuLkstWyswfpqm9oB53qBIqmzcz2Qk8ZXYa3M7CTOlyk=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tDMvR-0000ZJ-EG for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 12:01:46 +0000
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-53da5a27771so3670889e87.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Nov 2024 04:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1732017662; x=1732622462;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=;
 b=arfZkvmib0AiZehbXhFBLjm/v7Ktlm/CfCH91nEQuhE6LttDBrFM3gNdcm+0q6mTcX
 zg/k/GfeLvR73wqxcCaydCAkpCcbyZIQRObep0MKLClfRm0LAp+l/62Iof7+8JWQ2vQ3
 LIyjitAn8tQdYjH7hPDdb5V98+8ULPlVGVJMEUO71X+Xovg4qfe0g3keR3L5yCIEdgVy
 aku6L0TZuuwR2W8icSSSshmcyI8ttQArUUp1FyiY+bsoHFPo/wo5g43TtCcnsU9/ZhMC
 phj01m/lk7OMm7/zXJtn2gVdKcmI7Rm6INZE1nlkFiIXHoQ+RTyJkF4lUc7hc1F1GnLM
 0OXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732017662; x=1732622462;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rKwxKd5SMLLl6j1wqgSg6vRFE0Andwn/GjHqBxY+oho=;
 b=tbIMBuVTKgle753TYo/Wbfv2t4qxsD4hmz0XdBpcTm5INWNAyx2R/qYrCBmeRaNKBf
 uxzLNMnmAYZuHko8Pqsz3ZT0PzwDCGc2j6K2Gp2ziKx+PAiTCY8aJ3/k9ieSl8Fzj9Oh
 ohG4Z2olLSCz1O+N+LtpmiA+Y6CxOpDR/FCy7k7cjU68IeLrX1JUveby5zZF3mRT0ki+
 IaG2C0003IGsz2iQ0KltOzG6U1P8sNH5MhG+xD20egx1h547azMB8PFMVuzR/caQqXJt
 e3kvheP8ubPFiDAPeSSeSo9xYTnHm7pBZXiFULg+BJbxqrDeOCBvAFxCqMq7xki/Z+S/
 uU+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdjjs8i9Vdi+DJl/SBwGZ5KZHNyk/Nd2W6eAarCjREbeu6dPLtlfIMAxamCpXqH8t+LcBN0tSHbml0opoJl5ftDIM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyElpjVNySlDRftyHUPum1ne0DP9mbsf37Ffb2AovICM3ne+f0X
 7Rul6Dn1z6tiZBdNKB6tz93ZR5qk48wnYYatzuRDSbADwZ6uenXrY2y24/5IRJfbs0RD2CpuMDC
 8IW9DL1Q7I1GeCikK7LevipnfrCdfXVgL+t9r+DxmyF99GXa+7Lk=
X-Google-Smtp-Source: AGHT+IGgDrPcP42r6Mykqqve++SYMiYoBLLuXEcKJ8Odoey2Gw+rjXy59n0lXdXEBiuizDXRmQkISh7faoV70Zej13k=
X-Received: by 2002:a05:6512:a8b:b0:53d:a000:1817 with SMTP id
 2adb3069b0e04-53dab29cc39mr6595733e87.22.1732015851781; Tue, 19 Nov 2024
 03:30:51 -0800 (PST)
MIME-Version: 1.0
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
 <20241022-ssif-alert-gpios-v2-2-c7dd6dd17a7e@gmail.com>
 <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
In-Reply-To: <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
From: Corey Minyard <corey@minyard.net>
Date: Tue, 19 Nov 2024 05:30:40 -0600
Message-ID: <CAB9gMfphfY0H721G9qV8_3sm1d_RTnKkWbEOeqC-0ox9p4cfCQ@mail.gmail.com>
To: Quan Nguyen <quan@os.amperecomputing.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 23, 2024 at 11:30 PM Quan Nguyen <quan@os.amperecomputing.com>
    wrote: > > > > On 22/10/2024 08:20, Potin Lai wrote: > > From: Cosmo Chou
    <chou.cosmo@gmail.com> > > > > Implement GPIO-bas [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.45 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.167.45 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.45 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.45 listed in wl.mailspike.net]
X-Headers-End: 1tDMvR-0000ZJ-EG
Subject: Re: [Openipmi-developer] [PATCH v2 2/2] ipmi: ssif_bmc: add
 GPIO-based alert mechanism
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org,
 Cosmo Chou <chou.cosmo@gmail.com>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMjMsIDIwMjQgYXQgMTE6MzDigK9QTSBRdWFuIE5ndXllbgo8cXVhbkBvcy5h
bXBlcmVjb21wdXRpbmcuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAyMi8xMC8yMDI0IDA4OjIwLCBQ
b3RpbiBMYWkgd3JvdGU6Cj4gPiBGcm9tOiBDb3NtbyBDaG91IDxjaG91LmNvc21vQGdtYWlsLmNv
bT4KPiA+Cj4gPiBJbXBsZW1lbnQgR1BJTy1iYXNlZCBhbGVydCBtZWNoYW5pc20gaW4gdGhlIFNT
SUYgQk1DIGRyaXZlciB0byBub3RpZnkKPiA+IHRoZSBob3N0IHdoZW4gYSByZXNwb25zZSBpcyBy
ZWFkeS4KPiA+Cj4gPiBUaGlzIGltcHJvdmVzIGhvc3QtQk1DIGNvbW11bmljYXRpb24gZWZmaWNp
ZW5jeSBieSBwcm92aWRpbmcgaW1tZWRpYXRlCj4gPiBub3RpZmljYXRpb24sIHBvdGVudGlhbGx5
IHJlZHVjaW5nIGhvc3QgcG9sbGluZyBvdmVyaGVhZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
b3NtbyBDaG91IDxjaG91LmNvc21vQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2No
YXIvaXBtaS9zc2lmX2JtYy5jIHwgMTUgKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspCj4gPgo+Cj4gVGhhbmtzIGZvciBhZGRpbmcgZmVhdHVyZSB0
byB0aGlzIGRyaXZlciwgdGhlIGNvZGUgbG9va3MgZ29vZCB0byBtZS4KPgo+IFJldmlld2VkLWJ5
OiBRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRpbmcuY29tPgo+Cj4gSSdtIGp1c3Qg
aGF2ZSBhIGJpdCBvZiBjdXJpb3VzIG9uIGhvdyB0aGUgaXBtaV9zc2lmIGluIGhvc3Qgc2lkZSB0
byB3b3JrCj4gd2l0aCB0aGlzIG1lY2hhbmlzbT8gV2lsbCB0aGVyZSBiZSBwYXRjaGVzIGZvciBp
cG1pX3NzaWYgdG8gdXNlIHRoaXMKPiBmZWF0dXJlIGZvbGxvd2VkPwoKSSBqdXN0IHNhdyB0aGlz
LiAgV2hhdCBtYWtlcyB5b3UgdGhpbmsgYWxlcnRzIGFyZSBub3Qgc3VwcG9ydGVkIGluIGlwbWlf
c3NpZj8KCi1jb3JleQoKPgo+IFRoYW5rcyBhbmQgQmVzdCByZWdhcmRzLAo+IC0gUXVhbgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBt
aS1kZXZlbG9wZXIK
