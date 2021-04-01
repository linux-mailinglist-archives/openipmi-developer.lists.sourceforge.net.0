Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CA9351717
	for <lists+openipmi-developer@lfdr.de>; Thu,  1 Apr 2021 19:09:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lS0pG-0001MF-Gp; Thu, 01 Apr 2021 17:09:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <robherring2@gmail.com>) id 1lS0pF-0001M7-Ak
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Apr 2021 17:09:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+aXNjJuVUumi5TRfsImw8Zt0yNPvfmonu1KMDych7KE=; b=JoAclKtSYmoUM6xJ5eTmx+m7d8
 6EEo3MPU/CQzaRpRVGp/LNiQ3K97honBF/t5VWByHK1tEaLiICk6PyIQ76HN4myRNqvs/+/w41mfR
 amEHodtTjconiI6zWFylyslQiA5Ue7ihVjhhnqgUK83DjPrUUwT+KRg1mEV8fyqxtSiY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+aXNjJuVUumi5TRfsImw8Zt0yNPvfmonu1KMDych7KE=; b=LSMt+Tfoiyp1QpGRoDsdsPN0OQ
 tBjeyXKt3QC/inCfTHOIdRcNDyMUEMVE1r5zmbpdzlWj47Ewk5b3VqKngmiCZUTF7AtAAsW0qwilh
 Z+32Ir3vjPYK5NEVmovKwexe9LWaki/g9Vf9dH3EmU0ZswOZ5WmVRQdp5k5gqQK9bTvA=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lS0pB-003fdP-0O
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Apr 2021 17:09:45 +0000
Received: by mail-oi1-f177.google.com with SMTP id x2so2481055oiv.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 01 Apr 2021 10:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+aXNjJuVUumi5TRfsImw8Zt0yNPvfmonu1KMDych7KE=;
 b=BW96uSf8PdNqw7wNpF80xx7dgWxPFhBM8CVXa2hzZQXS0rTBcC4HwN0Bf+O1yTbWid
 1xVUNxz4VVM1HG3VMdZFR8uyrMF18DQEUqJl0ID+wcoDxlWbkyRwz/dqmjHKu2JzDOPE
 H9kDAC2cfw38VteZ8GmFWly8c559mxXkslYs9cd0Gi6iCmFn4TeJNnZUcohIyIK2R6kK
 JJoDw9U7lta/UDrALhAzYq4vELQYVOO9xnKN8cUfU1UDxCXpq+APuOnH9F5OXFpdjpi+
 0fTPit0SgKNB5yQ2MKCUcNESIP+mPvSKrA8b0wLvWgEqEiTkaTVXhKXAeZDeTLO7H2yi
 RJVA==
X-Gm-Message-State: AOAM533W6k60c/GdcFXqn8NAtbvKHR77fBLm0JxmJoYIyYHJ8g2v3AX/
 VI0IygyylzC0/CwfyLr3OQ==
X-Google-Smtp-Source: ABdhPJx8VdMpHnlAiOBeHsNkwA82OIfkMjQjd799V7gJHykNelnxJL3Z4wK3Gyo/lsR35Rm1qdYsig==
X-Received: by 2002:a05:6808:146:: with SMTP id
 h6mr6901775oie.118.1617296975408; 
 Thu, 01 Apr 2021 10:09:35 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g21sm1219961ooa.15.2021.04.01.10.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 10:09:34 -0700 (PDT)
Received: (nullmailer pid 623796 invoked by uid 1000);
 Thu, 01 Apr 2021 17:09:33 -0000
Date: Thu, 1 Apr 2021 12:09:33 -0500
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210401170933.GA622142@robh.at.kernel.org>
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
 <20210330141029.20412-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330141029.20412-4-quan@os.amperecomputing.com>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lS0pB-003fdP-0O
Subject: Re: [Openipmi-developer] [PATCH v2 3/3] bindings: ipmi: Add binding
 for Aspeed SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 30, 2021 at 09:10:29PM +0700, Quan Nguyen wrote:
> Add device tree binding document for the Aspeed SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
>  .../bindings/ipmi/aspeed-ssif-bmc.txt          | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt

Same comment as you ignored on v1.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
