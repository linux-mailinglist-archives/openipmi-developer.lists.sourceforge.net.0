Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFFE1208AC
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Dec 2019 15:32:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1igrQ4-0000Sp-RR; Mon, 16 Dec 2019 14:32:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1igrQ3-0000Si-ER
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 14:32:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bXpf+COUglAcUsTl2z4DeM1ndR//ffPpCxbqzstyUKQ=; b=Q87RPRNpb2RV0zxC34NktOkPHn
 bHhCaSTFqkR4sSwhhA//qag9KZxCUAQe0IuxO+i4nSj4NV2rm3b5r2c9P/EcOCzABN0DVeNx0P6Os
 UfLe2JaI/5eXowGzFBEY425UjTs/5TPONcQ+hf72Lv7rGvcFD4vPR+3MPxKqaQPpnV60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bXpf+COUglAcUsTl2z4DeM1ndR//ffPpCxbqzstyUKQ=; b=mAHyx2AiN0PmzqR4uJRnsYhQ2v
 ayxgYGkEo/UMv1rFRdHgyyYoMVETAaaKQ+4lbnCppByOOLWmJwh8fDpwVC+JNDE9qSSPU4pN7iDaU
 wjRvCdChcbsAFKT7R1RT6j66ttLcyVIV8ybnI2tUAfKN3PXXPBjb2+DzeWXUWd9Vow6A=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1igrQ1-00F8mX-DH
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 14:32:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id g18so9404860otj.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 16 Dec 2019 06:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bXpf+COUglAcUsTl2z4DeM1ndR//ffPpCxbqzstyUKQ=;
 b=D6Nk0BHlJkljiPeNUrJDi+XzIqKWakoWhYbDKvhmHp9Ru32mpDVlsLS1aJ+i+L4FYO
 bINrAISzHScEB9tLcSHoAEbx5XJevU3STt4g70CVTX74qgwBp0AD+mM8Z/ygK/E8XEIO
 DefOXc1b9Uk5yHpaBaWb85xqedcDtgRavDtVddDAVkJ/j3aOX8VEvFhRNWe7XF2eJLZb
 QR00SRYshcLjwij+8ikiaeYF03tvReJWY4gOgrTBRVGAlbYLqADW4nPtRIRlQgFaGdXX
 ao06rVeoJS/GUg2ZRJs0aiKa2LAfd7pHUsZA+f120Gtj8E3jtGDXCWRLwFdiqkk+I4Rr
 Zecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=bXpf+COUglAcUsTl2z4DeM1ndR//ffPpCxbqzstyUKQ=;
 b=WJy0/PqcabO8VnGpzTQ3uO5x+DvovU+dieg7wJZc0YdU5KcW8U0v1Ykh6Sa5Y8K4ge
 IVBn6cL2DuZtMIdx4f52CDIMUGOPg0ZPT1K8C841gmndzi8AnQWT2VwHrsW0aDgFuCd7
 ImusEaB2FcMpPR0h84iTmC4VkxvcECgw3ROQNZsfnSvJpMNnYl6zLNJ02OcwsWqak82k
 YMfhj/u6QPCX5XbLCIDy9iFAydvfKjU5/gtYUuNlejXjXhZMMZdJJEhC4Axf01qGwm4v
 QfIdzdkeP6M7r0sH9taAA7L8vr8vEObhzQwBvb1iea46chn2c5PEXVWbDdlDhn66Cte/
 SNMg==
X-Gm-Message-State: APjAAAVlBtHgZUxN55jAvv2ASVdAW+5DcEB8uTwJyWBau/ICuvzsGhDg
 l2gmbv69n6TCmqubfqTYe2jJAZ4=
X-Google-Smtp-Source: APXvYqz79y3Vlj/NkGldc996Izp52cE+40uIpyavzmy+0QYmxodhOtGRm9GUMxVnNSUFC22y94aFxg==
X-Received: by 2002:a05:6830:1d1:: with SMTP id
 r17mr34012178ota.151.1576506731145; 
 Mon, 16 Dec 2019 06:32:11 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id s9sm6727480oic.15.2019.12.16.06.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 06:32:10 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 1D07B180058;
 Mon, 16 Dec 2019 14:32:10 +0000 (UTC)
Date: Mon, 16 Dec 2019 08:32:08 -0600
From: Corey Minyard <minyard@acm.org>
To: =?utf-8?Q?V=C3=A1clav_Dole=C5=BEal?= <vdolezal@redhat.com>
Message-ID: <20191216143208.GB7025@minyard.net>
References: <97d27e93-c670-6365-89dc-d14e4c8243f2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97d27e93-c670-6365-89dc-d14e4c8243f2@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1igrQ1-00F8mX-DH
Subject: Re: [Openipmi-developer] [PATCH] Include readline history headers
 where needed
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

R290IGl0LCB0aGFua3MuCgotY29yZXkKCk9uIE1vbiwgRGVjIDE2LCAyMDE5IGF0IDAxOjM3OjM4
UE0gKzAxMDAsIFbDoWNsYXYgRG9sZcW+YWwgd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogVmFjbGF2
IERvbGV6YWwgPHZkb2xlemFsQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGNtZGxhbmcvaXBtaXNoLmMg
ICAgICAgICAgICAgfCAxICsKPiAgc2FtcGxlL2lwbWlfc2VyaWFsX2JtY19lbXUuYyB8IDEgKwo+
ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9jbWRs
YW5nL2lwbWlzaC5jIGIvY21kbGFuZy9pcG1pc2guYwo+IGluZGV4IDEzOWRhNjdiLi5hNGI4ZjBi
YSAxMDA2NDQKPiAtLS0gYS9jbWRsYW5nL2lwbWlzaC5jCj4gKysrIGIvY21kbGFuZy9pcG1pc2gu
Ywo+IEBAIC01MSw2ICs1MSw3IEBACj4gICNpbmNsdWRlIDxPcGVuSVBNSS9pcG1pX2NtZGxhbmcu
aD4KPiAgI2luY2x1ZGUgPE9wZW5JUE1JL2lwbWlfZGVidWcuaD4KPiAgI2luY2x1ZGUgPHJlYWRs
aW5lL3JlYWRsaW5lLmg+Cj4gKyNpbmNsdWRlIDxyZWFkbGluZS9oaXN0b3J5Lmg+Cj4gIAo+ICAj
aWZkZWYgSEFWRV9HTElCCj4gICNpbmNsdWRlIDxnbGliLmg+Cj4gZGlmZiAtLWdpdCBhL3NhbXBs
ZS9pcG1pX3NlcmlhbF9ibWNfZW11LmMgYi9zYW1wbGUvaXBtaV9zZXJpYWxfYm1jX2VtdS5jCj4g
aW5kZXggMWI4YmI5YWMuLjE4NDc0NWVmIDEwMDY0NAo+IC0tLSBhL3NhbXBsZS9pcG1pX3Nlcmlh
bF9ibWNfZW11LmMKPiArKysgYi9zYW1wbGUvaXBtaV9zZXJpYWxfYm1jX2VtdS5jCj4gQEAgLTQz
LDYgKzQzLDcgQEAKPiAgI2luY2x1ZGUgPHN0ZGxpYi5oPgo+ICAjaW5jbHVkZSA8c3lzL3NlbGVj
dC5oPgo+ICAjaW5jbHVkZSA8cmVhZGxpbmUvcmVhZGxpbmUuaD4KPiArI2luY2x1ZGUgPHJlYWRs
aW5lL2hpc3RvcnkuaD4KPiAgCj4gICNkZWZpbmUgX0dOVV9TT1VSQ0UKPiAgI2luY2x1ZGUgPGdl
dG9wdC5oPgo+IC0tIAo+IDIuMjAuMQo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dAo+IE9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Blbmlw
bWktZGV2ZWxvcGVyCg==
