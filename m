Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD94D89077B
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Mar 2024 18:47:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rptqg-0007Lo-Jg;
	Thu, 28 Mar 2024 17:47:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <allen.lkml@gmail.com>) id 1rptqe-0007LZ-9p
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:47:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WOul4usuPisehHXyQcZLwgce2H6JwRccYEaJQWtP1Jo=; b=nQsXi2S/6uHXspxwqfAM76jX3r
 Ox6bFO863JdDjBpq+V6oJ0kfxdOVqvchi2Bm+QG38VRFDRqM1OddTDVsMb69WGDeVouXHvAqw8h3H
 EgwmG5F0C/89eVZQA9t+51m0AlLc6NzxlsRRaXXTYTUQK0M4/YFLWnKiteayLktrw6oQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WOul4usuPisehHXyQcZLwgce2H6JwRccYEaJQWtP1Jo=; b=jhY3FlxAw1rxUOQjccWxYZQXk/
 LCEi07/CwmCp04wvX2CsI8Rw6TlmE/rhDLgf+dqz/bJ7l06xlmZ6vLYzJsZ9u9r4CrYcarZmIKsyw
 BklxApCeyVaMhz6U8ZIJK1ZOq7iuTIceJxGbYZFmertoQt9rVIVCA0GsDpI//nhw6yaU=;
Received: from mail-ua1-f48.google.com ([209.85.222.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rptqb-0006LL-5t for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Mar 2024 17:47:32 +0000
Received: by mail-ua1-f48.google.com with SMTP id
 a1e0cc1a2514c-7e05d6871ddso330193241.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Mar 2024 10:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711648038; x=1712252838; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WOul4usuPisehHXyQcZLwgce2H6JwRccYEaJQWtP1Jo=;
 b=cyN8g+kGuRZhSymwsCuwkesyqsEh7LtDf8F0ptn6hdO9fT+B12poPaznaVaeL64YdT
 GzfEP4WHSCe6Zi4y/ooRpKwdhS0hhehCHnbHG3jL6zbnHVsEEpJKWhVOL61j7gYJo+3/
 lo6VHvI2tIld/OIZctHeiowtmXOg+oCVVoP6Yj/G8Ndv1mzWbMyDl2lW/h8eIVVvtnB0
 MOPqm9ezP6lWH7NzchrtsrUZfdD9fZKajKnsda0Mt5IjpOERQCOXntwxAji1IgCDhWH8
 kfQyTjTTokFtguIHRShGlgzbDjv1kEC7jlOqBFt7HnV0iN46KjNHF7vh5aDUjUvGEiG4
 EQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711648038; x=1712252838;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WOul4usuPisehHXyQcZLwgce2H6JwRccYEaJQWtP1Jo=;
 b=NSXwvgFsI49xAPwWnA9n7OfC3nCsBuYW8TZMaNCFZixsQoxKZzfsruqh09P0qTGKGz
 EMl59ym0QPF9lZzzEpDJNrBOYiMHLmBZO0xnPwnEN23RI3tp5y8aewQprJKQJy1cBsyP
 jo5IKJhsQY7VDdoKDAoGNVJyJYCuevndSkIHO4b0buQTjLnU7hiHizVl7CSNHqnTQ00r
 cRml5qv31dsA0/jjDRN903BzaEnA0sJdDn3vP3q+pXkiWBczgq8B7omSEC95Fs9Yi3vd
 l+xidDr8lZB7CZQy4fwlKV/+lQOeGBdi4963SeLuMOOImI/UyIttmIqmOa6HUOjJhaB5
 GIEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+1Tgbj5T1dhDb5if2ab1/UpymPg73OEhTideKRFKclox/QyCJf2w5YMA7qlEfSUVMR61whSxCkirxTzJsE/piPAA7SUzlLHuNVdIJcIIYTHxR+8Zr2oEd
X-Gm-Message-State: AOJu0YxVfPJJcYR44scmnEKdu5HCMvL6kYmcIQrIUJn9m9XVEo8PZFVu
 EicnaUQiMuovYbAvP/xfb0A+VBcWVwFjxs9LEet+WcPWkbeJLGV3m+docpfHAgQrDSM1RhfC7Un
 Ux+UlerDH/cy0mgdRHx16mz1xB7o=
X-Google-Smtp-Source: AGHT+IHhsrATdsPlGDNfn/hR7BQXc3o4d86Rd7NcYHBOy9LUQjNRQoJ0rDqs8OMJuSA4Qyiba22Ugt9rz6m/+ouyIBc=
X-Received: by 2002:a67:f7c6:0:b0:476:fbbb:14bc with SMTP id
 a6-20020a67f7c6000000b00476fbbb14bcmr3836850vsp.30.1711648038557; Thu, 28 Mar
 2024 10:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
 <9c31b697-3d80-407a-82b3-cfbb19fafb31@arm.com>
In-Reply-To: <9c31b697-3d80-407a-82b3-cfbb19fafb31@arm.com>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 28 Mar 2024 10:47:06 -0700
Message-ID: <CAOMdWSL9GUkoOOX4LNwMOV24-8xnmFKep15xj8NnmnBss-RYAQ@mail.gmail.com>
To: Christian Loehle <christian.loehle@arm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 28, 2024 at 3:16 AM Christian Loehle wrote:
   > > On 27/03/2024 16:03, Allen Pais wrote: > > The only generic interface
   to execute asynchronously in the BH context is > > tasklet; howeve [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [allen.lkml[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.48 listed in list.dnswl.org]
X-Headers-End: 1rptqb-0006LL-5t
Subject: Re: [Openipmi-developer] [PATCH 9/9] mmc: Convert from tasklet to
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

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgMzoxNuKAr0FNIENocmlzdGlhbiBMb2VobGUKPGNocmlz
dGlhbi5sb2VobGVAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyNy8wMy8yMDI0IDE2OjAzLCBBbGxl
biBQYWlzIHdyb3RlOgo+ID4gVGhlIG9ubHkgZ2VuZXJpYyBpbnRlcmZhY2UgdG8gZXhlY3V0ZSBh
c3luY2hyb25vdXNseSBpbiB0aGUgQkggY29udGV4dCBpcwo+ID4gdGFza2xldDsgaG93ZXZlciwg
aXQncyBtYXJrZWQgZGVwcmVjYXRlZCBhbmQgaGFzIHNvbWUgZGVzaWduIGZsYXdzLiBUbwo+ID4g
cmVwbGFjZSB0YXNrbGV0cywgQkggd29ya3F1ZXVlIHN1cHBvcnQgd2FzIHJlY2VudGx5IGFkZGVk
LiBBIEJIIHdvcmtxdWV1ZQo+ID4gYmVoYXZlcyBzaW1pbGFybHkgdG8gcmVndWxhciB3b3JrcXVl
dWVzIGV4Y2VwdCB0aGF0IHRoZSBxdWV1ZWQgd29yayBpdGVtcwo+ID4gYXJlIGV4ZWN1dGVkIGlu
IHRoZSBCSCBjb250ZXh0Lgo+ID4KPiA+IFRoaXMgcGF0Y2ggY29udmVydHMgZHJpdmVycy9pbmZp
bmliYW5kLyogZnJvbSB0YXNrbGV0IHRvIEJIIHdvcmtxdWV1ZS4KPiBzL2luZmluaWJhbmQvbW1j
CgpXaWxsIGZpeCBpdCBpbiB2Mi4KPiA+Cj4gPiBCYXNlZCBvbiB0aGUgd29yayBkb25lIGJ5IFRl
anVuIEhlbyA8dGpAa2VybmVsLm9yZz4KPiA+IEJyYW5jaDogaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGovd3EuZ2l0IGZvci02LjEwCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogQWxsZW4gUGFpcyA8YWxsZW4ubGttbEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+
ICBkcml2ZXJzL21tYy9ob3N0L2F0bWVsLW1jaS5jICAgICAgICAgICAgICAgICAgfCAzNSArKysr
LS0tLS0KPiA+ICBkcml2ZXJzL21tYy9ob3N0L2F1MXhtbWMuYyAgICAgICAgICAgICAgICAgICAg
fCAzNyArKysrLS0tLS0KPiA+ICBkcml2ZXJzL21tYy9ob3N0L2NiNzEwLW1tYy5jICAgICAgICAg
ICAgICAgICAgfCAxNSArKy0tCj4gPiAgZHJpdmVycy9tbWMvaG9zdC9jYjcxMC1tbWMuaCAgICAg
ICAgICAgICAgICAgIHwgIDMgKy0KPiA+ICBkcml2ZXJzL21tYy9ob3N0L2R3X21tYy5jICAgICAg
ICAgICAgICAgICAgICAgfCAyNSArKysrLS0tCj4gPiAgZHJpdmVycy9tbWMvaG9zdC9kd19tbWMu
aCAgICAgICAgICAgICAgICAgICAgIHwgIDkgKystCj4gRm9yIGR3X21tYzoKPiBQZXJmb3JtYW5j
ZSBudW1iZXJzIGxvb2sgZ29vZCBGV0lXLgo+IGZvciBpIGluICQoc2VxIDAgNSk7IGRvIGVjaG8g
cGVyZm9ybWFuY2UgPiAvc3lzL2RldmljZXMvc3lzdGVtL2NwdS9jcHUkaS9jcHVmcmVxL3NjYWxp
bmdfZ292ZXJub3I7IGRvbmUKPiBmb3IgaSBpbiAkKHNlcSAwIDQpOyBkbyBmaW8gLS1uYW1lPXRl
c3QgLS1ydz1yYW5kcmVhZCAtLWJzPTRrIC0tcnVudGltZT0zMCAtLXRpbWVfYmFzZWQgLS1maWxl
bmFtZT0vZGV2L21tY2JsazEgLS1taW5pbWFsIC0tbnVtam9icz02IC0taW9kZXB0aD0zMiAtLWdy
b3VwX3JlcG9ydGluZyB8IGF3ayAtRiAiOyIgJ3twcmludCAkOH0nOyBzbGVlcCAzMDsgZG9uZQo+
IEJhc2VsaW5lOgo+IDE3NTgKPiAxNzczCj4gMTYxOQo+IDE4MzUKPiAxNjM5Cj4gdG86Cj4gMTc0
Mwo+IDE2NDMKPiAxODYwCj4gMTYzOAo+IDE4NzIKPiAoSSdkIGNhbGwgdGhhdCBlcXVpdmFsZW50
KS4KPiBUaGlzIGlzIG9uIGEgUkszMzk5Lgo+IEkgd291bGQgcHJlZmVyIG1vc3Qgb2YgdGhlIG5h
bWluZyB0byBjaGFuZ2UgZnJvbSAid29yayIgdG8gIndvcmtxdWV1ZSIgaW4gdGhlIGRyaXZlcgo+
IGNvZGUuCj4gQXBhcnQgZnJvbSB0aGF0Ogo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gTG9laGxl
IDxjaHJpc3RpYW4ubG9laGxlQGFybS5jb20+Cj4gVGVzdGVkLWJ5OiBDaHJpc3RpYW4gTG9laGxl
IDxjaHJpc3RpYW4ubG9laGxlQGFybS5jb20+CgogVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGVz
dGluZyBhbmQgdGhlIHJldmlldy4gV2lsbCBoYXZlIHlvdXIKY29uY2VybnMgYWRkcmVzc2VkIGlu
IHYyLgoKLSBBbGxlbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
