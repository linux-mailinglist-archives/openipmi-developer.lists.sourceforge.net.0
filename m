Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 304718907A1
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 18:52:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rptvd-0003O3-Fq;
	Thu, 28 Mar 2024 17:52:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rptvc-0003Nx-UF
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K7LBZgef3OmAKuVME1pwiv1MCdqK5azmNzQAONOqk24=; b=NU658uOdgvzNEwJ9MSs7ocuIfq
 ujrn2jHvuTJCZrC+vnMEW+x8/goJOa2DV4MjRkbzltIRfsLwH+z5HRJVgx3oa2ZZ7NNqoIY/IP6dh
 M4kwbBj2COP3OZHAwBjMSRlIT/R5cS1p4aiHL33fHJCZVY8rCsOVf4FIAzJ0nDhaIvuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K7LBZgef3OmAKuVME1pwiv1MCdqK5azmNzQAONOqk24=; b=Z1MrEsOZwX+ddhvrkLQDBC0++R
 xFX+KAMw4YfJV6qo9jjOqwwVWuEUSPwWQY+SLyx7a4gIfw1FRLXf/ffN1mGnpo/YwkyTIuuRsns4e
 ZNU3bBqFkY5k7S3ZON2ljmXLQl8pQigErJe2JjJ5wRDHNA8IxcRzKYwP3nYYR7KlJh9o=;
Received: from mail-ua1-f51.google.com ([209.85.222.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rptvc-0006hk-0M for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:52:41 +0000
Received: by mail-ua1-f51.google.com with SMTP id
 a1e0cc1a2514c-7e2f87fb677so326712241.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 10:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711648348; x=1712253148; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K7LBZgef3OmAKuVME1pwiv1MCdqK5azmNzQAONOqk24=;
 b=XeUlADzNYg5vY+4tsDYlnohuMx42qH/NvQM1sBPtak4XkLU/OvcJXuoumVWtEePPLa
 H+Eg8nqC45jSf2EqcV4MldJkjCqijn2zo3Ff9Txr7pPBgBHMJ9CbaZdHtoGUyu+cdKPy
 RXkjulTPcMf6f+NPXusesA4TfVSI3BVhhOFi44/42OhTl1/ECiOu9OCzUXRAWRJkJDXI
 DcuqpFniSFOwx1yXlJPDbZHQMKQ80/BSl0VGWr5rWa23lPplCQ3t+J3oOZNF8qaxnO4E
 q3dDw5XvQkK+UNR9QP9UiojXkmHHJrzUbwpHxtMgtVFlggIiGa4p7D0G0OcHz1X9Qled
 jlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711648348; x=1712253148;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=K7LBZgef3OmAKuVME1pwiv1MCdqK5azmNzQAONOqk24=;
 b=DGLAV8Sb/iqr2EKa3UjanUegOOjH+zamxc1qTiMCk2sQOQaVdBtysq4lcDeFmPzg3L
 Txhmm4QZrBym2DBIkhq0uriLVlrFn4s413AeuoxSQl692Gk7c6ziZ79xcox2aSnzSCev
 0AVClIxFSItZHMM08Z/rAWlnFMTWdEFs21BKWcum7QKiLbXiYAQtH8SaWh4C8WAWpSWr
 WSOERCn8V0Ce/cUxkgulLWQlDq2nALyy+VgjnllHmnzG1DLDmEndyUxngVM+0nOv4ld5
 1kOREMdLTNepw2iUxIhoN9Ocpr5+0dYzfWZLbp21BWIofcLH7pA4EuyUTFKeVY/5LYEv
 s+iA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUdRXgeXf8uz0Yr+hnw2flKNabQZxCP8/hViggBclmiT13Xpe30CH/v0pXdbAwXfVaSk1YbAvO0DZO4OQqgwLULVZZWal0SpTflQ4HAAa17bx3u92tKwoP
X-Gm-Message-State: AOJu0Yy7gEjDn2V5zgKuWZiIXGET8OB6BPbAZ0CINVmzFqn5jnOyV2qX
 k6rYENHej6TUY2dEm2Gl80ZyHRQ7tRUMATHnyU8l3OUEd4karz6/fKXquTB3ywrIW8qVHXr6kNH
 Vwfz3f2U/sdutRy/WfLSt+IJJYMA=
X-Google-Smtp-Source: AGHT+IE95pKnkyYhJyn8YRFxcJ3UpRrXG0+tqWRBp7m1EgSmM0bJzOr09iKkrzG5ElLe1R0ae4jladZnXe+pzUi/Iq8=
X-Received: by 2002:a05:6102:6d1:b0:478:4c1a:efbd with SMTP id
 m17-20020a05610206d100b004784c1aefbdmr2262487vsg.13.1711648347936; Thu, 28
 Mar 2024 10:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
 <ZgRePyo2zC4A1Fp4@mail.minyard.net>
In-Reply-To: <ZgRePyo2zC4A1Fp4@mail.minyard.net>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 10:52:16 -0700
Message-ID: <CAOMdWS+1AFxEqmACiBYzPHc+q0Ut6hp15tdV50JHvfVeUNCGQw@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 27, 2024 at 11:05 AM Corey Minyard wrote: >
   > On Wed, Mar 27, 2024 at 04:03:11PM +0000, Allen Pais wrote: > > The only
    generic interface to execute asynchronously in the BH context is [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [allen.lkml[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.51 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1rptvc-0006hk-0M
Subject: Re: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to
 BH workqueue
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 keescook@chromium.org, oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 Allen Pais <apais@linux.microsoft.com>, linux-arm-kernel@lists.infradead.org,
 angelogioacchino.delregno@collabora.com, sbranden@broadcom.com,
 logang@deltatee.com, andersson@kernel.org, marcan@marcan.st,
 haiyangz@microsoft.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev, vkoul@kernel.org,
 linux-s390@vger.kernel.org, mhiramat@kernel.org, zhang.lyra@gmail.com,
 tj@kernel.org, manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 shawnguo@kernel.org, afaerber@suse.de, daniel@zonque.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMjcsIDIwMjQgYXQgMTE6MDXigK9BTSBDb3JleSBNaW55YXJkIDxtaW55YXJk
QGFjbS5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMjcsIDIwMjQgYXQgMDQ6MDM6MTFQTSAr
MDAwMCwgQWxsZW4gUGFpcyB3cm90ZToKPiA+IFRoZSBvbmx5IGdlbmVyaWMgaW50ZXJmYWNlIHRv
IGV4ZWN1dGUgYXN5bmNocm9ub3VzbHkgaW4gdGhlIEJIIGNvbnRleHQgaXMKPiA+IHRhc2tsZXQ7
IGhvd2V2ZXIsIGl0J3MgbWFya2VkIGRlcHJlY2F0ZWQgYW5kIGhhcyBzb21lIGRlc2lnbiBmbGF3
cy4gVG8KPiA+IHJlcGxhY2UgdGFza2xldHMsIEJIIHdvcmtxdWV1ZSBzdXBwb3J0IHdhcyByZWNl
bnRseSBhZGRlZC4gQSBCSCB3b3JrcXVldWUKPiA+IGJlaGF2ZXMgc2ltaWxhcmx5IHRvIHJlZ3Vs
YXIgd29ya3F1ZXVlcyBleGNlcHQgdGhhdCB0aGUgcXVldWVkIHdvcmsgaXRlbXMKPiA+IGFyZSBl
eGVjdXRlZCBpbiB0aGUgQkggY29udGV4dC4KPiA+Cj4gPiBUaGlzIHBhdGNoIGNvbnZlcnRzIGRy
aXZlcnMvaW5maW5pYmFuZC8qIGZyb20gdGFza2xldCB0byBCSCB3b3JrcXVldWUuCj4KPiBJIHRo
aW5rIHlvdSBtZWFuIGRyaXZlcnMvY2hhci9pcG1pLyogaGVyZS4KCiBNeSBhcG9sb2dpZXMsIG15
IHNjcmlwdHMgbWVzc2VkIHVwIHRoZSBjb21taXQgbWVzc2FnZXMgZm9yIHRoaXMgc2VyaWVzLgpX
aWxsIGhhdmUgaXQgZml4ZWQgaW4gdjIuCgo+Cj4gSSBiZWxpZXZlIHRoYXQgd29yayBxdWV1ZXMg
aXRlbXMgYXJlIGV4ZWN1dGUgc2luZ2xlLXRocmVhZGVkIGZvciBhIHdvcmsKPiBxdWV1ZSwgc28g
dGhpcyBzaG91bGQgYmUgZ29vZC4gIEkgbmVlZCB0byB0ZXN0IHRoaXMsIHRob3VnaC4gIEl0IG1h
eSBiZQo+IHRoYXQgYW4gSVBNSSBkZXZpY2UgY2FuIGhhdmUgaXRzIG93biB3b3JrIHF1ZXVlOyBp
dCBtYXkgbm90IGJlIGltcG9ydGFudAo+IHRvIHJ1biBpdCBpbiBiaCBjb250ZXh0LgoKICBGYWly
IHBvaW50LiBDb3VsZCB5b3UgcGxlYXNlIGxldCBtZSBrbm93IG9uY2UgeW91IGhhdmUgaGFkIGEg
Y2hhbmNlIHRvIHRlc3QKdGhlc2UgY2hhbmdlcy4gTWVhbndoaWxlLCBJIHdpbGwgd29yayBvbiBS
RkMgd2hlcmVpbiBJUE1JIHdpbGwgaGF2ZSBpdHMgb3duCndvcmtxdWV1ZS4KCiBUaGFua3MgZm9y
IHRha2luZyB0aW1lIG91dCB0byByZXZpZXcuCgotIEFsbGVuCgo+Cj4gLWNvcmV5Cj4KPiA+Cj4g
PiBCYXNlZCBvbiB0aGUgd29yayBkb25lIGJ5IFRlanVuIEhlbyA8dGpAa2VybmVsLm9yZz4KPiA+
IEJyYW5jaDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dGovd3EuZ2l0IGZvci02LjEwCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxsZW4gUGFpcyA8YWxs
ZW4ubGttbEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21z
Z2hhbmRsZXIuYyB8IDMwICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCj4gPiBpbmRleCBiMGVlZGM0NTk1YjMuLmZjZTJhMmRi
ZGM4MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5j
Cj4gPiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+ID4gQEAgLTM2
LDEyICszNiwxMyBAQAo+ID4gICNpbmNsdWRlIDxsaW51eC9ub3NwZWMuaD4KPiA+ICAjaW5jbHVk
ZSA8bGludXgvdm1hbGxvYy5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ID4gKyNp
bmNsdWRlIDxsaW51eC93b3JrcXVldWUuaD4KPiA+Cj4gPiAgI2RlZmluZSBJUE1JX0RSSVZFUl9W
RVJTSU9OICIzOS4yIgo+ID4KPiA+ICBzdGF0aWMgc3RydWN0IGlwbWlfcmVjdl9tc2cgKmlwbWlf
YWxsb2NfcmVjdl9tc2codm9pZCk7Cj4gPiAgc3RhdGljIGludCBpcG1pX2luaXRfbXNnaGFuZGxl
cih2b2lkKTsKPiA+IC1zdGF0aWMgdm9pZCBzbWlfcmVjdl90YXNrbGV0KHN0cnVjdCB0YXNrbGV0
X3N0cnVjdCAqdCk7Cj4gPiArc3RhdGljIHZvaWQgc21pX3JlY3Zfd29yayhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKnQpOwo+ID4gIHN0YXRpYyB2b2lkIGhhbmRsZV9uZXdfcmVjdl9tc2dzKHN0cnVjdCBp
cG1pX3NtaSAqaW50Zik7Cj4gPiAgc3RhdGljIHZvaWQgbmVlZF93YWl0ZXIoc3RydWN0IGlwbWlf
c21pICppbnRmKTsKPiA+ICBzdGF0aWMgaW50IGhhbmRsZV9vbmVfcmVjdl9tc2coc3RydWN0IGlw
bWlfc21pICppbnRmLAo+ID4gQEAgLTQ5OCwxMyArNDk5LDEzIEBAIHN0cnVjdCBpcG1pX3NtaSB7
Cj4gPiAgICAgICAvKgo+ID4gICAgICAgICogTWVzc2FnZXMgcXVldWVkIGZvciBkZWxpdmVyeS4g
IElmIGRlbGl2ZXJ5IGZhaWxzIChvdXQgb2YgbWVtb3J5Cj4gPiAgICAgICAgKiBmb3IgaW5zdGFu
Y2UpLCBUaGV5IHdpbGwgc3RheSBpbiBoZXJlIHRvIGJlIHByb2Nlc3NlZCBsYXRlciBpbiBhCj4g
PiAtICAgICAgKiBwZXJpb2RpYyB0aW1lciBpbnRlcnJ1cHQuICBUaGUgdGFza2xldCBpcyBmb3Ig
aGFuZGxpbmcgcmVjZWl2ZWQKPiA+ICsgICAgICAqIHBlcmlvZGljIHRpbWVyIGludGVycnVwdC4g
IFRoZSB3b3JrIGlzIGZvciBoYW5kbGluZyByZWNlaXZlZAo+ID4gICAgICAgICogbWVzc2FnZXMg
ZGlyZWN0bHkgZnJvbSB0aGUgaGFuZGxlci4KPiA+ICAgICAgICAqLwo+ID4gICAgICAgc3Bpbmxv
Y2tfdCAgICAgICB3YWl0aW5nX3Jjdl9tc2dzX2xvY2s7Cj4gPiAgICAgICBzdHJ1Y3QgbGlzdF9o
ZWFkIHdhaXRpbmdfcmN2X21zZ3M7Cj4gPiAgICAgICBhdG9taWNfdCAgICAgICAgIHdhdGNoZG9n
X3ByZXRpbWVvdXRzX3RvX2RlbGl2ZXI7Cj4gPiAtICAgICBzdHJ1Y3QgdGFza2xldF9zdHJ1Y3Qg
cmVjdl90YXNrbGV0Owo+ID4gKyAgICAgc3RydWN0IHdvcmtfc3RydWN0IHJlY3Zfd29yazsKPiA+
Cj4gPiAgICAgICBzcGlubG9ja190ICAgICAgICAgICAgIHhtaXRfbXNnc19sb2NrOwo+ID4gICAg
ICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICB4bWl0X21zZ3M7Cj4gPiBAQCAtNzA0LDcgKzcwNSw3
IEBAIHN0YXRpYyB2b2lkIGNsZWFuX3VwX2ludGVyZmFjZV9kYXRhKHN0cnVjdCBpcG1pX3NtaSAq
aW50ZikKPiA+ICAgICAgIHN0cnVjdCBjbWRfcmN2ciAgKnJjdnIsICpyY3ZyMjsKPiA+ICAgICAg
IHN0cnVjdCBsaXN0X2hlYWQgbGlzdDsKPiA+Cj4gPiAtICAgICB0YXNrbGV0X2tpbGwoJmludGYt
PnJlY3ZfdGFza2xldCk7Cj4gPiArICAgICBjYW5jZWxfd29ya19zeW5jKCZpbnRmLT5yZWN2X3dv
cmspOwo+ID4KPiA+ICAgICAgIGZyZWVfc21pX21zZ19saXN0KCZpbnRmLT53YWl0aW5nX3Jjdl9t
c2dzKTsKPiA+ICAgICAgIGZyZWVfcmVjdl9tc2dfbGlzdCgmaW50Zi0+d2FpdGluZ19ldmVudHMp
Owo+ID4gQEAgLTEzMTksNyArMTMyMCw3IEBAIHN0YXRpYyB2b2lkIGZyZWVfdXNlcihzdHJ1Y3Qg
a3JlZiAqcmVmKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBpcG1pX3VzZXIgKnVzZXIgPSBjb250
YWluZXJfb2YocmVmLCBzdHJ1Y3QgaXBtaV91c2VyLCByZWZjb3VudCk7Cj4gPgo+ID4gLSAgICAg
LyogU1JDVSBjbGVhbnVwIG11c3QgaGFwcGVuIGluIHRhc2sgY29udGV4dC4gKi8KPiA+ICsgICAg
IC8qIFNSQ1UgY2xlYW51cCBtdXN0IGhhcHBlbiBpbiB3b3JrIGNvbnRleHQuICovCj4gPiAgICAg
ICBxdWV1ZV93b3JrKHJlbW92ZV93b3JrX3dxLCAmdXNlci0+cmVtb3ZlX3dvcmspOwo+ID4gIH0K
PiA+Cj4gPiBAQCAtMzYwNSw4ICszNjA2LDcgQEAgaW50IGlwbWlfYWRkX3NtaShzdHJ1Y3QgbW9k
dWxlICAgICAgICAgKm93bmVyLAo+ID4gICAgICAgaW50Zi0+Y3Vycl9zZXEgPSAwOwo+ID4gICAg
ICAgc3Bpbl9sb2NrX2luaXQoJmludGYtPndhaXRpbmdfcmN2X21zZ3NfbG9jayk7Cj4gPiAgICAg
ICBJTklUX0xJU1RfSEVBRCgmaW50Zi0+d2FpdGluZ19yY3ZfbXNncyk7Cj4gPiAtICAgICB0YXNr
bGV0X3NldHVwKCZpbnRmLT5yZWN2X3Rhc2tsZXQsCj4gPiAtICAgICAgICAgICAgICAgICAgc21p
X3JlY3ZfdGFza2xldCk7Cj4gPiArICAgICBJTklUX1dPUksoJmludGYtPnJlY3Zfd29yaywgc21p
X3JlY3Zfd29yayk7Cj4gPiAgICAgICBhdG9taWNfc2V0KCZpbnRmLT53YXRjaGRvZ19wcmV0aW1l
b3V0c190b19kZWxpdmVyLCAwKTsKPiA+ICAgICAgIHNwaW5fbG9ja19pbml0KCZpbnRmLT54bWl0
X21zZ3NfbG9jayk7Cj4gPiAgICAgICBJTklUX0xJU1RfSEVBRCgmaW50Zi0+eG1pdF9tc2dzKTsK
PiA+IEBAIC00Nzc5LDcgKzQ3NzksNyBAQCBzdGF0aWMgdm9pZCBoYW5kbGVfbmV3X3JlY3ZfbXNn
cyhzdHJ1Y3QgaXBtaV9zbWkgKmludGYpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICogVG8g
cHJlc2VydmUgbWVzc2FnZSBvcmRlciwgcXVpdCBpZiB3ZQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAqIGNhbid0IGhhbmRsZSBhIG1lc3NhZ2UuICBBZGQgdGhlIG1lc3NhZ2UKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgKiBiYWNrIGF0IHRoZSBoZWFkLCB0aGlzIGlzIHNhZmUgYmVjYXVz
ZSB0aGlzCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICogdGFza2xldCBpcyB0aGUgb25seSB0
aGluZyB0aGF0IHB1bGxzIHRoZQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAqIHdvcmsgaXMg
dGhlIG9ubHkgdGhpbmcgdGhhdCBwdWxscyB0aGUKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
KiBtZXNzYWdlcy4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBsaXN0X2FkZCgmc21pX21zZy0+bGluaywgJmludGYtPndhaXRpbmdfcmN2X21z
Z3MpOwo+ID4gQEAgLTQ4MTIsMTAgKzQ4MTIsMTAgQEAgc3RhdGljIHZvaWQgaGFuZGxlX25ld19y
ZWN2X21zZ3Moc3RydWN0IGlwbWlfc21pICppbnRmKQo+ID4gICAgICAgfQo+ID4gIH0KPiA+Cj4g
PiAtc3RhdGljIHZvaWQgc21pX3JlY3ZfdGFza2xldChzdHJ1Y3QgdGFza2xldF9zdHJ1Y3QgKnQp
Cj4gPiArc3RhdGljIHZvaWQgc21pX3JlY3Zfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKnQpCj4g
PiAgewo+ID4gICAgICAgdW5zaWduZWQgbG9uZyBmbGFncyA9IDA7IC8qIGtlZXAgdXMgd2Fybmlu
Zy1mcmVlLiAqLwo+ID4gLSAgICAgc3RydWN0IGlwbWlfc21pICppbnRmID0gZnJvbV90YXNrbGV0
KGludGYsIHQsIHJlY3ZfdGFza2xldCk7Cj4gPiArICAgICBzdHJ1Y3QgaXBtaV9zbWkgKmludGYg
PSBmcm9tX3dvcmsoaW50ZiwgdCwgcmVjdl93b3JrKTsKPiA+ICAgICAgIGludCBydW5fdG9fY29t
cGxldGlvbiA9IGludGYtPnJ1bl90b19jb21wbGV0aW9uOwo+ID4gICAgICAgc3RydWN0IGlwbWlf
c21pX21zZyAqbmV3bXNnID0gTlVMTDsKPiA+Cj4gPiBAQCAtNDg2Niw3ICs0ODY2LDcgQEAgdm9p
ZCBpcG1pX3NtaV9tc2dfcmVjZWl2ZWQoc3RydWN0IGlwbWlfc21pICppbnRmLAo+ID4KPiA+ICAg
ICAgIC8qCj4gPiAgICAgICAgKiBUbyBwcmVzZXJ2ZSBtZXNzYWdlIG9yZGVyLCB3ZSBrZWVwIGEg
cXVldWUgYW5kIGRlbGl2ZXIgZnJvbQo+ID4gLSAgICAgICogYSB0YXNrbGV0Lgo+ID4gKyAgICAg
ICogYSB3b3JrLgo+ID4gICAgICAgICovCj4gPiAgICAgICBpZiAoIXJ1bl90b19jb21wbGV0aW9u
KQo+ID4gICAgICAgICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmaW50Zi0+d2FpdGluZ19yY3Zf
bXNnc19sb2NrLCBmbGFncyk7Cj4gPiBAQCAtNDg4Nyw5ICs0ODg3LDkgQEAgdm9pZCBpcG1pX3Nt
aV9tc2dfcmVjZWl2ZWQoc3RydWN0IGlwbWlfc21pICppbnRmLAo+ID4gICAgICAgICAgICAgICBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZpbnRmLT54bWl0X21zZ3NfbG9jaywgZmxhZ3MpOwo+ID4K
PiA+ICAgICAgIGlmIChydW5fdG9fY29tcGxldGlvbikKPiA+IC0gICAgICAgICAgICAgc21pX3Jl
Y3ZfdGFza2xldCgmaW50Zi0+cmVjdl90YXNrbGV0KTsKPiA+ICsgICAgICAgICAgICAgc21pX3Jl
Y3Zfd29yaygmaW50Zi0+cmVjdl93b3JrKTsKPiA+ICAgICAgIGVsc2UKPiA+IC0gICAgICAgICAg
ICAgdGFza2xldF9zY2hlZHVsZSgmaW50Zi0+cmVjdl90YXNrbGV0KTsKPiA+ICsgICAgICAgICAg
ICAgcXVldWVfd29yayhzeXN0ZW1fYmhfd3EsICZpbnRmLT5yZWN2X3dvcmspOwo+ID4gIH0KPiA+
ICBFWFBPUlRfU1lNQk9MKGlwbWlfc21pX21zZ19yZWNlaXZlZCk7Cj4gPgo+ID4gQEAgLTQ4OTks
NyArNDg5OSw3IEBAIHZvaWQgaXBtaV9zbWlfd2F0Y2hkb2dfcHJldGltZW91dChzdHJ1Y3QgaXBt
aV9zbWkgKmludGYpCj4gPiAgICAgICAgICAgICAgIHJldHVybjsKPiA+Cj4gPiAgICAgICBhdG9t
aWNfc2V0KCZpbnRmLT53YXRjaGRvZ19wcmV0aW1lb3V0c190b19kZWxpdmVyLCAxKTsKPiA+IC0g
ICAgIHRhc2tsZXRfc2NoZWR1bGUoJmludGYtPnJlY3ZfdGFza2xldCk7Cj4gPiArICAgICBxdWV1
ZV93b3JrKHN5c3RlbV9iaF93cSwgJmludGYtPnJlY3Zfd29yayk7Cj4gPiAgfQo+ID4gIEVYUE9S
VF9TWU1CT0woaXBtaV9zbWlfd2F0Y2hkb2dfcHJldGltZW91dCk7Cj4gPgo+ID4gQEAgLTUwNjgs
NyArNTA2OCw3IEBAIHN0YXRpYyBib29sIGlwbWlfdGltZW91dF9oYW5kbGVyKHN0cnVjdCBpcG1p
X3NtaSAqaW50ZiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmbGFn
cyk7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgdGFza2xldF9zY2hlZHVsZSgmaW50Zi0+cmVj
dl90YXNrbGV0KTsKPiA+ICsgICAgIHF1ZXVlX3dvcmsoc3lzdGVtX2JoX3dxLCAmaW50Zi0+cmVj
dl93b3JrKTsKPiA+Cj4gPiAgICAgICByZXR1cm4gbmVlZF90aW1lcjsKPiA+ICB9Cj4gPiAtLQo+
ID4gMi4xNy4xCj4gPgo+ID4KPgoKCi0tIAogICAgICAgLSBBbGxlbgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
