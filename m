Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E00443471
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 18:15:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhxNI-0008H0-Di; Tue, 02 Nov 2021 17:15:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mhxNG-0008GM-PL
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 17:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1rV3XOJ3qDka6Et3yIyfjmJ6Ui3y+3TCP7wRSyd8Go=; b=Dz9X2ZPAuUJTFd9pkmMN0kRs07
 BSztl80rHsbmjKnUn+F3cMkSnzPn4NTF8yIqAcEM74vcZSK6zZNA4C2KOE4o0fdmmWdkVfHiy7iLH
 zUXQfnhjqNz7h0IuQ93h4xeAcLm6PbqHXk/CQlm66Oeaw21WvP6qQrmorZcZsBAiAbUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C1rV3XOJ3qDka6Et3yIyfjmJ6Ui3y+3TCP7wRSyd8Go=; b=P/piLxk0WCMWhmaWe2xgsvIolp
 BawTH1BJaxsRH0HwaldfG78G+0b/hlANfKGrpRnOFYRA8Gl3qnfd1+TlHkpfvHYTMw2UPxvJIZc41
 XMrq0qWlhpw9ekzVVYQhGJXfY4kpxbX4rF037oXqUqmrdDEFI3y4t5RkT6SxeRD3vOqg=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhxNE-00FD6S-RE
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 17:15:01 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="317515952"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="317515952"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:36:41 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="583666959"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177])
 ([10.209.55.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:36:40 -0700
Message-ID: <a92a6ac8-dd10-0a21-ac7e-64b290e094dd@linux.intel.com>
Date: Tue, 2 Nov 2021 09:36:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>, jae.hyun.yoo@intel.com, 
 Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-3-jae.hyun.yoo@intel.com>
 <194999c0-e9b3-1b0d-3739-faa2b7f72391@kaod.org>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <194999c0-e9b3-1b0d-3739-faa2b7f72391@kaod.org>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > Reviewed-by: Cédric Le Goater <clg@kaod.org> Thanks a lot
    Cédric! 
 
 Content analysis details:   (-4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.43 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mhxNE-00FD6S-RE
Subject: Re: [Openipmi-developer] [PATCH -next 2/4] ipmi: bt: add clock
 control logic
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

PiBSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KClRoYW5rcyBh
IGxvdCBDw6lkcmljIQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
