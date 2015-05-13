RequestsTotal = React.createClass
  
  displayName: 'RequestsTotal'

  render: ->

    item = @props.item
    user = app.user.get('deployUser')

    return (
      <a className="big-number-link" href={config.appRoot + "/requests/active/#{item.linkName}/" + user }>
          <div className="well">
            <div className="big-number">
                <div className="number">
                  {item.total}
                </div>
                <div className="number-label">{item.label}</div>
            </div>
        </div>
      </a>
    )


module.exports = RequestsTotal