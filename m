Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 825C88D8832
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Jun 2024 19:50:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sEBov-0002Lc-Fj;
	Mon, 03 Jun 2024 17:50:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <apais@linux.microsoft.com>) id 1sEBoq-0002LR-5v
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 17:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4DfOU8aQl0aDoujS+l1W8I9cPbB9Sd5aNNyJFDGp/QQ=; b=GWGizvkYiBstgwIuftLN/csyp+
 0JowLqTEVnCVCfnEgyU2VV0b2OjNKSIUHT4KYjuodCySXvNZDTzNRzfkhMC70CQREYweKIF0YlzWK
 uIxD+F1wiAJ9EMijwk5MJSb6NGtatJwuNvMN/banJvishRSnS4ZvCRdTEdQiAj4Nun1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4DfOU8aQl0aDoujS+l1W8I9cPbB9Sd5aNNyJFDGp/QQ=; b=H+pNplhw5/8CXnmEKj52ASckGD
 dXxFoW1KUY8tiMvnxHQbSQSDpaFnwFultPySCfz9yWoaBWRqKrskW1KD+cqSM/M1qUWGEdwHJQ98Y
 zoMicHazBG0pfKAmMkoaksyAcusn7zwNeCA9TZCKcfa+w1ulHcVF2F40FZcsSDqJr5GE=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1sEBop-0001AY-1c for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 17:50:03 +0000
Received: from smtpclient.apple (d66-183-91-182.bchsia.telus.net
 [66.183.91.182])
 by linux.microsoft.com (Postfix) with ESMTPSA id 4684920681D5;
 Mon,  3 Jun 2024 10:25:13 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 4684920681D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1717435514;
 bh=4DfOU8aQl0aDoujS+l1W8I9cPbB9Sd5aNNyJFDGp/QQ=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=arwB9k2cp5qmOpH04JZQJkpaQ68dKr6NHq6/nWjIeKTEglSLJZbHneTkxRo0iYye3
 dopPLk66Mp6Cqqtct/3LWOtVyWSXCVY5VMtnmDbdTLbXrzM1H6t1A8KCeQ5Sp+gzGS
 Acr7rY4qAUIDkO+vSD/92kHIH7AgZovgYBJ1BnFc=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
From: Allen Pais <apais@linux.microsoft.com>
In-Reply-To: <7e618af0-51a7-4941-a386-0ac68c66d358@microchip.com>
Date: Mon, 3 Jun 2024 10:25:02 -0700
Message-Id: <61F36002-C765-410C-8EF9-203593C269FF@linux.microsoft.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-10-apais@linux.microsoft.com>
 <7e618af0-51a7-4941-a386-0ac68c66d358@microchip.com>
To: Aubin Constans <aubin.constans@microchip.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-Spam-Score: -5.1 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > On Jun 3, 2024, at 5:38 AM, Aubin Constans <aubin.constans@microchip.com>
    wrote: > > On 27/03/2024 17:03, Allen Pais wrote: >> EXTERNAL EMAIL: Do not
    click links or open attachments unless you kno [...] 
 
 Content analysis details:   (-5.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: checkpatch.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [13.77.154.182 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [13.77.154.182 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [13.77.154.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sEBop-0001AY-1c
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
 linux-mmc@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Frank.Li@nxp.com, linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
 HaraldWelte@viatech.com, Paul Cercueil <paul@crapouillou.net>,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, Robert Jarzmik <robert.jarzmik@free.fr>, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
 jassisinghbrar@gmail.com, decui@microsoft.com,
 Zhou Wang <wangzhou1@hisilicon.com>,
 =?utf-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 jh80.chung@samsung.com, zw@zh-kernel.org, Chen-Yu Tsai <wens@csie.org>,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org,
 Orson Zhai <orsonzhai@gmail.com>, pierre@ossman.eu, linux-mips@vger.kernel.org,
 Eugeniy.Paltsev@synopsys.com, Patrice CHOTARD <patrice.chotard@foss.st.com>,
 asahi@lists.linux.dev, brucechang@via.com.tw,
 Kees Cook <keescook@chromium.org>, oakad@yahoo.com, sven@svenpeter.dev,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sean Wang <sean.wang@mediatek.com>, linux-actions@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 Scott Branden <sbranden@broadcom.com>, Logan Gunthorpe <logang@deltatee.com>,
 andersson@kernel.org, marcan@marcan.st, haiyangz@microsoft.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, konrad.dybcio@linaro.org,
 linux-sunxi@lists.linux.dev, Vinod Koul <vkoul@kernel.org>,
 linux-s390@vger.kernel.org, mhiramat@kernel.org,
 Lyra Zhang <zhang.lyra@gmail.com>, Tejun Heo <tj@kernel.org>,
 manuel.lauss@gmail.com, linux-media@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>,
 =?utf-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cgo+IE9uIEp1biAzLCAyMDI0LCBhdCA1OjM44oCvQU0sIEF1YmluIENvbnN0YW5zIDxhdWJpbi5j
b25zdGFuc0BtaWNyb2NoaXAuY29tPiB3cm90ZToKPiAKPiBPbiAyNy8wMy8yMDI0IDE3OjAzLCBB
bGxlbiBQYWlzIHdyb3RlOgo+PiBFWFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9y
IG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUKPj4g
VGhlIG9ubHkgZ2VuZXJpYyBpbnRlcmZhY2UgdG8gZXhlY3V0ZSBhc3luY2hyb25vdXNseSBpbiB0
aGUgQkggY29udGV4dCBpcwo+PiB0YXNrbGV0OyBob3dldmVyLCBpdCdzIG1hcmtlZCBkZXByZWNh
dGVkIGFuZCBoYXMgc29tZSBkZXNpZ24gZmxhd3MuIFRvCj4+IHJlcGxhY2UgdGFza2xldHMsIEJI
IHdvcmtxdWV1ZSBzdXBwb3J0IHdhcyByZWNlbnRseSBhZGRlZC4gQSBCSCB3b3JrcXVldWUKPj4g
YmVoYXZlcyBzaW1pbGFybHkgdG8gcmVndWxhciB3b3JrcXVldWVzIGV4Y2VwdCB0aGF0IHRoZSBx
dWV1ZWQgd29yayBpdGVtcwo+PiBhcmUgZXhlY3V0ZWQgaW4gdGhlIEJIIGNvbnRleHQuCj4+IFRo
aXMgcGF0Y2ggY29udmVydHMgZHJpdmVycy9pbmZpbmliYW5kLyogZnJvbSB0YXNrbGV0IHRvIEJI
IHdvcmtxdWV1ZS4KPj4gQmFzZWQgb24gdGhlIHdvcmsgZG9uZSBieSBUZWp1biBIZW8gPHRqQGtl
cm5lbC5vcmc+Cj4+IEJyYW5jaDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdGovd3EuZ2l0IGZvci02LjEwCj4+IFNpZ25lZC1vZmYtYnk6IEFsbGVuIFBh
aXMgPGFsbGVuLmxrbWxAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvbW1jL2hvc3QvYXRt
ZWwtbWNpLmMgICAgICAgICAgICAgICAgICB8IDM1ICsrKystLS0tLQo+IFsuLi5dCj4gCj4gRm9y
IGF0bWVsLW1jaSwganVkZ2luZyBmcm9tIGEgZmV3IHNpbXBsZSB0ZXN0cywgcGVyZm9ybWFuY2Ug
aXMgcHJlc2VydmVkLgo+IEUuZy4gd3JpdGluZyB0byBhIFNEIENhcmQgb24gdGhlIFNBTUE1RDMt
WHBsYWluZWQgYm9hcmQ6Cj4gdGltZSBkZCBpZj0vZGV2L3plcm8gb2Y9L29wdC9fZGVsX21lIGJz
PTRrIGNvdW50PTY0awo+IAo+ICAgICBCYXNlIDYuOS4wIDogMC4wN3VzZXIgNS4wNXN5c3RlbSAw
OjE4LjkyZWxhcHNlZCAyNyVDUFUKPiAgUGF0Y2hlZCA2LjkuMCs6IDAuMTJ1c2VyIDQuOTJzeXN0
ZW0gMDoxOC43NmVsYXBzZWQgMjYlQ1BVCj4gCj4gSG93ZXZlciwgcGxlYXNlIHJlc29sdmUgd2hh
dCBjaGVja3BhdGNoIGlzIGNvbXBsYWluaW5nIGFib3V0Ogo+IHNjcmlwdHMvY2hlY2twYXRjaC5w
bCAtLXN0cmljdCBQQVRDSC05LTktbW1jLUNvbnZlcnQtZnJvbS10YXNrbGV0LXRvLUJILXdvcmtx
dWV1ZS5tYm94Cj4gCj4gIFdBUk5JTkc6IHBsZWFzZSwgbm8gc3BhY2UgYmVmb3JlIHRhYnMKPiAg
IzcyOiBGSUxFOiBkcml2ZXJzL21tYy9ob3N0L2F0bWVsLW1jaS5jOjM2NzoKPiAgK15Jc3RydWN0
IHdvcmtfc3RydWN0IF5Jd29yazskCj4gCj4gU2FtZSBhcyBkaXNjdXNzaW9ucyBvbiB0aGUgVVNC
IHBhdGNoWzFdIGFuZCBvdGhlcnMgaW4gdGhpcyBzZXJpZXMsIEkgYW0gYWxzbyBpbiBmYXZvdXIg
b2YgIndvcmtxdWV1ZSIgb3Igc2ltaWxhciBpbiB0aGUgY29tbWVudHMsIHJhdGhlciB0aGFuIGp1
c3QgIndvcmsiLgoKIFdpbGwgc2VuZCBvdXQgYSBuZXcgdmVyc2lvbi4KClRoYW5rIHlvdSB2ZXJ5
IG11Y2ggZm9yIHRlc3RpbmcgYW5kIHByb3ZpZGluZyB5b3VyIHJldmlldy4KCi0gQWxsZW4KCj4g
Cj4gQXBhcnQgZnJvbSB0aGF0Ogo+IFRlc3RlZC1ieTogQXViaW4gQ29uc3RhbnMgPGF1YmluLmNv
bnN0YW5zQG1pY3JvY2hpcC5jb20+Cj4gQWNrZWQtYnk6IEF1YmluIENvbnN0YW5zIDxhdWJpbi5j
b25zdGFuc0BtaWNyb2NoaXAuY29tPgo+IAo+IFRoYW5rcy4KPiAKPiBbMV06IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LW1tYy9DQU9NZFdTTGlwUGZtM09aVHBqWno0dUY0TStFXzhRQW9U
ZU1jS0JYYXdMbmtUUXg2SmdAbWFpbC5nbWFpbC5jb20vCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
