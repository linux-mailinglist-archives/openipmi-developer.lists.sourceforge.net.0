Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E45D18A70
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Jan 2026 13:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K59lyTB70RMvaLXDnpogkastkkoRQvZc6igYDZgO8jc=; b=V91lUJjcFDDkrAA2DylMkb6/k7
	J86SaOSs2r4q5p34/sGilOgH8D22ZHji0EcLZhmjr5o9bCwkV7472aoTkoH6MFeijHrhBXbsCRuF7
	tKHb3LTgsHFVrek2tENokvSrB/z9tycAZZ8/5oNZe4kVn/Ba8xy/etYT9N4I8+sFA3hI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vfdHO-0005sU-U6;
	Tue, 13 Jan 2026 12:13:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Markus.Elfring@web.de>) id 1vfdHN-0005sM-Q3
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 12:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xrBKOhWTODIMSEAokhf/MKprYf0krZ318QlyARHjwRA=; b=HgxuhHNN5Y74+96b9JOGnPTV92
 RTSeFr8wagkRag49o49mLulSHbMmPYDHZuJXEfw3bb3sNbUSa7aQUwilBqkwRF4SatVsEXIx4fZBI
 WrLgrV/e2n2kfAz/Z5kMbqoNRXsJr80qpIYC/1V3rT1h5C+u6RNPt7U6K7OZDBXFXX8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Subject:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xrBKOhWTODIMSEAokhf/MKprYf0krZ318QlyARHjwRA=; b=I2HAorgtvfcS/sGmRWB8Q4anPU
 /iTDZofKvRsQkgMe9SWG5+DUMMkPOE2nZYNfv3BTlkV03QkV0+Tdf2yUkBnjm+iZ+6ebAp5cAcZ9w
 34MwsThCjnojPIBClphrClittMj4/2K2Jj8w5BjHAtmqlPOnBlu4lH64yiuXRJXlJ1oM=;
Received: from mout.web.de ([212.227.15.3])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfdHM-0008RK-Kh for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 12:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1768306390; x=1768911190; i=markus.elfring@web.de;
 bh=xrBKOhWTODIMSEAokhf/MKprYf0krZ318QlyARHjwRA=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=CNKh/rU5zyWRttL93SCAVvIt4QmXH7dZjzY+agMU/n2dTbKiEzj10Wd3M4Kf25Re
 PiM6uVheWkWVn/k4XeRhgkJ1x3CMaFP9DbKZYxAFNwp2cis6FIqEpkuYMmCNSIgKV
 lfUnjJh3wOqwIlr5P1nPsnyYHYs0LzarUJXxp3D/PEYQFksfdV/ykcohS2WDjs+hw
 Eo0SVC+/2EAfY6Uyj+pUFP83F4IUKHJTFWy6W2bOZpTXC/tnodSqW0ZpZnVlf4+6C
 xU2WiwUV8FeZ6KNe4ofEW1nk5/e+ggqFNO8yBHOeNWEl5spfZRos9JB0EZa6gQTuf
 c+P1Vkt4SeDkpL09OQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.174]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1Mf3ug-1wL0Qh3iCQ-00i0Yt; Tue, 13
 Jan 2026 13:13:09 +0100
Message-ID: <11084f74-c136-414f-bcdc-817209ed16ae@web.de>
Date: Tue, 13 Jan 2026 13:13:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Johnston <matt@codeconstruct.com.au>,
 openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>,
 Corey Minyard <corey@minyard.net>
References: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
Content-Language: en-GB, de-DE
In-Reply-To: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
X-Provags-ID: V03:K1:jLt9qR9dGqiEpM9oRYnwiUcDphzpmBUDlOSM1JkmQJnf6NyXNN5
 UbOrctH91GH0MYIkWaz2/ob2+oxwJwvDLSskGicHHcrYeuJzvK/BCqBWmUUdY3EyhZoW+GQ
 o9foIbMr2qlnFEBuqAqqoIwysIpEfskTtFVT1I5jn74VaruFA8elIQYXmQZD6z0hKZjTW/i
 gP3X6D8enF7WMcL6uSHeQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bXaP2V7d+Uw=;7DXZXYZKXmuOnGeeSW0DGXf8Yaq
 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
 9eZETGjo=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > IPMB doesn't use i2c reads, but the handler needs to set
 a value. > Otherwise an i2c read will return an uninitialised value from
 the bus > driver. See also once more:
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.19-rc5#n94
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [markus.elfring(at)web.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vfdHM-0008RK-Kh
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: initialise event
 handler read bytes
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
From: Markus Elfring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> IPMB doesn't use i2c reads, but the handler needs to set a value.
> Otherwise an i2c read will return an uninitialised value from the bus
> driver.

See also once more:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.19-rc5#n94

Regards,
Markus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
