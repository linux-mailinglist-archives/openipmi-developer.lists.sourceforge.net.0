Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4318E704C4B
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 May 2023 13:26:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pysoV-0006gZ-VV;
	Tue, 16 May 2023 11:25:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pmenzel@molgen.mpg.de>) id 1pysoT-0006gT-IT
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SRqFPSleOpn+FhKDmd6Rqbnqd5HLaKcreoKGJee1hs4=; b=d4YaXceln5TrOwEf0IOoZviVeu
 tA+/gwpDJlJFbbz2ITu1drjA2uxqAt1ye/91/gqcF3cPHExkgHjiKP0TsPqAt73U33tim303OTzqx
 yL+jvq48fe3lKSDOk6Mhogz+6jCO9FfYYRRSgT2uZO4+RoubQLdpmsskmAlhYkrXG0Fs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SRqFPSleOpn+FhKDmd6Rqbnqd5HLaKcreoKGJee1hs4=; b=KbgKAff1rQgNs2hPgPnU26ALlJ
 H2b/wSiDFKNKygMYoh5BNnc12fH+7C65AhI7hFxc3E7E+S4qDp5bFq96KZn3ee965+6WcsQkmiqjD
 TGfs9104G6X030c885vqxhMNGMWUJ2fn2ClQdWOmhV6nutw+1h57qNukNw5BQp3rZtV4=;
Received: from mx3.molgen.mpg.de ([141.14.17.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pysoS-009TYd-CV for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:25:53 +0000
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A1A7F61DFA903;
 Tue, 16 May 2023 13:06:20 +0200 (CEST)
Message-ID: <60e9d000-0793-1421-3045-fdb74976373c@molgen.mpg.de>
Date: Tue, 16 May 2023 13:06:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Niklas Schnelle <schnelle@linux.ibm.com>
References: <20230516110038.2413224-1-schnelle@linux.ibm.com>
 <20230516110038.2413224-4-schnelle@linux.ibm.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230516110038.2413224-4-schnelle@linux.ibm.com>
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear Niklas, Am 16.05.23 um 12:59 schrieb Niklas Schnelle:
    […] 
 
 Content analysis details:   (-5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [141.14.17.11 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pysoS-009TYd-CV
Subject: Re: [Openipmi-developer] [PATCH v4 03/41] char: impi,
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
Cc: Corey Minyard <cminyard@mvista.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>, linux-arch@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RGVhciBOaWtsYXMsCgoKQW0gMTYuMDUuMjMgdW0gMTI6NTkgc2NocmllYiBOaWtsYXMgU2NobmVs
bGU6Cgpb4oCmXQoKVGhlcmUgaXMgYSBzbWFsbCB0eXBvIGluIHRoZSBjb21taXQgbWVzc2FnZSBz
dW1tYXJ5L3RpdGxlOiBpbXBpIOKGkiBpcG1pLgoKCktpbmQgcmVnYXJkcwoKUGF1bAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWkt
ZGV2ZWxvcGVyCg==
