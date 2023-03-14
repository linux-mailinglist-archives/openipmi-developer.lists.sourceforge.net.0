Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CE6B978B
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 15:18:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc5TQ-00043i-CW;
	Tue, 14 Mar 2023 14:17:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1pc5TF-00043K-Nl
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:17:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QHk/e8nmrChnVOh0v2KNpG9SPtXK48kelECMBXBBkqg=; b=DTAKxZpnvOyV/Px3JMYdcwfCLq
 AmBZ93KV4kooDf3gq8cipf9ltO/27IqGKAdL00WobQSHtDo/3VD6Jlp7NtPpTtEKUxWh7huEUMX2U
 uuMScQ8HBVCrUgl4xcYREOBNNCpM8THUFgdFWYZyq3WIEkc9en82lcCrxbZV+UPoLFSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QHk/e8nmrChnVOh0v2KNpG9SPtXK48kelECMBXBBkqg=; b=G9BLFA1t4RRSluztK7YbDdQmeU
 zjlJe2hD8MknVEot2/A8njy6max05EGHr6kJ+WJ2ozmSKCucs7kkCrQjCz1G/rzwmsnjcgnGTAuqB
 z2xkG6LGQm0T6jyKXibGSnGtkH0uEtTIDgg4iJGLhpWACDtCOdH1fJugj7IAxLa6s5WQ=;
Received: from mail-yw1-f175.google.com ([209.85.128.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pc5T9-0007lL-Pg for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 14:17:40 +0000
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-5416698e889so186620687b3.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Mar 2023 07:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678803453;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QHk/e8nmrChnVOh0v2KNpG9SPtXK48kelECMBXBBkqg=;
 b=IKaFUQkcTJ8znkHrRdKAK32a6DJ4Otr4uPv9q4Sdf2rcGgZWsIDxj4j8S+0XJDsU8j
 BYZ0ghvvy5V++um2y/CXOXtlucF+UQBJSFu1bXTxdvHnAuhqg4pGv1dpQCVS6Bd9/REm
 hWKBTXmM+6lQzLJlXkkULXJKVMFGUNgmClACevd1iLKsM2CpFvqR38xYGH4nfXL0ByrR
 JdIavHZufBzbSuuKDMJvDO0Fe8U7iXtG+mjxisF/p8WKvVanMemGRDB9CC7ccDcoLlbg
 S0MyTS4itvQ82RAcA4AbF1QdnOpceVplSF1SWutrsiff7zfxzZ/kSChTI1DRWqdCTFlu
 PJQg==
X-Gm-Message-State: AO0yUKXYXu6oD2uBGbMROkxKFoSWdpaxPN+/FRH6a8Sye4E+H9fhZrur
 /E8pUjg6BLEsR3Hjl4pui10MDnHqHu8r1w==
X-Google-Smtp-Source: AK7set+dqchV8VDm/F6pAmriz4px8q8vzG0xLFv+wZOTUXRWgCdxdhmarr80Q/yel2sS2IKl+xPZ4g==
X-Received: by 2002:a81:8583:0:b0:525:22fa:701f with SMTP id
 v125-20020a818583000000b0052522fa701fmr39421553ywf.9.1678803453555; 
 Tue, 14 Mar 2023 07:17:33 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com.
 [209.85.219.181]) by smtp.gmail.com with ESMTPSA id
 g187-20020a37b6c4000000b00743592b4745sm1791135qkf.109.2023.03.14.07.17.32
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 07:17:32 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id e71so7322266ybc.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Mar 2023 07:17:32 -0700 (PDT)
X-Received: by 2002:a05:6902:145:b0:ac2:a7a7:23c3 with SMTP id
 p5-20020a056902014500b00ac2a7a723c3mr17221159ybh.12.1678803452128; Tue, 14
 Mar 2023 07:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
In-Reply-To: <20230314121216.413434-4-schnelle@linux.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 14 Mar 2023 15:17:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXXapUNn2-_+WWULq1ELLJEzVgJ7CZ-OJpbTSy-=JjZVA@mail.gmail.com>
Message-ID: <CAMuHMdXXapUNn2-_+WWULq1ELLJEzVgJ7CZ-OJpbTSy-=JjZVA@mail.gmail.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Niklas, On Tue, Mar 14, 2023 at 1:12 PM Niklas Schnelle
    <schnelle@linux.ibm.com> wrote: > In a future patch HAS_IOPORT=n will result
    in inb()/outb() and friends > not being declared. We thus need to add thi
    [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.175 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1pc5T9-0007lL-Pg
Subject: Re: [Openipmi-developer] [PATCH v3 03/38] char: impi,
 tpm: depend on HAS_IOPORT
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgTmlrbGFzLAoKT24gVHVlLCBNYXIgMTQsIDIwMjMgYXQgMToxMuKAr1BNIE5pa2xhcyBTY2hu
ZWxsZSA8c2NobmVsbGVAbGludXguaWJtLmNvbT4gd3JvdGU6Cj4gSW4gYSBmdXR1cmUgcGF0Y2gg
SEFTX0lPUE9SVD1uIHdpbGwgcmVzdWx0IGluIGluYigpL291dGIoKSBhbmQgZnJpZW5kcwo+IG5v
dCBiZWluZyBkZWNsYXJlZC4gV2UgdGh1cyBuZWVkIHRvIGFkZCB0aGlzIGRlcGVuZGVuY3kgYW5k
IGlmZGVmCj4gc2VjdGlvbnMgb2YgY29kZSB1c2luZyBpbmIoKS9vdXRiKCkgYXMgYWx0ZXJuYXRp
dmUgYWNjZXNzIG1ldGhvZHMuCj4KPiBDby1kZXZlbG9wZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFy
bmRAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgU2NobmVsbGUgPHNjaG5lbGxl
QGxpbnV4LmlibS5jb20+CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgo+IC0tLSBhL2RyaXZlcnMv
Y2hhci9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9jaGFyL0tjb25maWcKPiBAQCAtMzQsNiArMzQs
NyBAQCBjb25maWcgVFRZX1BSSU5US19MRVZFTAo+ICBjb25maWcgUFJJTlRFUgo+ICAgICAgICAg
dHJpc3RhdGUgIlBhcmFsbGVsIHByaW50ZXIgc3VwcG9ydCIKPiAgICAgICAgIGRlcGVuZHMgb24g
UEFSUE9SVAo+ICsgICAgICAgZGVwZW5kcyBvbiBIQVNfSU9QT1JUCgpUaGlzIGxvb2tzIHdyb25n
IHRvIG1lLgpkcml2ZXJzL2NoYXIvbHAuYyB1c2VzIHRoZSBwYXJwb3J0IEFQSSwgbm8gZGlyZWN0
IEkvTyBwb3J0IGFjY2Vzcy4KCj4gICAgICAgICBoZWxwCj4gICAgICAgICAgIElmIHlvdSBpbnRl
bmQgdG8gYXR0YWNoIGEgcHJpbnRlciB0byB0aGUgcGFyYWxsZWwgcG9ydCBvZiB5b3VyIExpbnV4
Cj4gICAgICAgICAgIGJveCAoYXMgb3Bwb3NlZCB0byB1c2luZyBhIHNlcmlhbCBwcmludGVyOyBp
ZiB0aGUgY29ubmVjdG9yIGF0IHRoZQoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAg
ICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMg
b2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFs
IGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFj
a2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9n
cmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
